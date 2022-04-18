extends KinematicBody2D

# TODO Figure out how inheritance should work here...

signal place_item(item, global_pos)

var gold_resource 

export var fear : float = 1.0
export var love : float = 0.0

export var speed : float = 75.0
export var fear_distance_multiplier : float = 50.0
export var food_detection_radius : float = 100.0
export var gold_detection_radius : float = 100.0
export var player_distance_preference: float = 20.0
export var disposition_to_fear : float = 1.0
export var disposition_to_love : float = 1.0

var environment : YSort
var player : KinematicBody2D
var closest_food : Area2D
var closest_gold_underground : Area2D
var on_this_gold

enum State {IDLE, DIGGING_DOWN, UNDERGROUND, DIGGING_UP, FOLLOWING_PLAYER, SEEKING_FOOD, SEEKING_GOLD};
var current_state : int
var animation_state : AnimationNodeStateMachinePlayback;

# AI Terms (web.pdx.edu/~arhodes/ai5.pdf)
# Environment, Percepts, Sensors, Agent, _actuators, _actions

func eat(food) -> void:
	if food.placed_by_player:
		fear -= disposition_to_fear
		love += disposition_to_love

# Called when the node enters the scene tree for the first time.
func _ready():
	gold_resource = preload("res://world/items/Gold.tscn");
	
	# TODO Temporary hack
	environment = get_parent();
	player = environment.get_node("Player");
	
	animation_state = $Sprite/AnimationTree.get("parameters/playback");
	
	# So that I don't have to always turn this off when I want to get a frame to set in AnimationPlayer
	$Sprite/AnimationTree.active = true;


func _process(delta):
	var next_state := _determine_next_state();
	_transition_to_state(current_state, next_state);
	current_state = next_state;
	_act();
	$DebugInfo.text = "State: %s\nfear: %s\nlove: %s\nAnimationState: %s" % [State.keys()[current_state], fear, love, animation_state.get_current_node()];

# TODO Maybe should refactor this to be more like a decision tree?
# TODO Any nice way to generate a state graph?
func _determine_next_state() -> int:
	# TODO How can we make this more efficient?
	var distance_from_player := player.global_position.distance_to(global_position);
	
	# TODO Refactor - this should probably be done somewhere else
	if not is_instance_valid(closest_food):
		closest_food = null;
	if not is_instance_valid(closest_gold_underground):
		closest_gold_underground = null;
	
	# TODO How can we make this more efficient?
	var distance_to_closest_food : float = food_detection_radius;
	for food in get_tree().get_nodes_in_group("food"):
		var distance_to_this_food : float = food.global_position.distance_to(global_position);
		if distance_to_this_food < distance_to_closest_food:
			distance_to_closest_food = distance_to_this_food;
			closest_food = food;
			
	# TODO How can we make this more efficient?
	var distance_to_closest_gold_underground : float = gold_detection_radius;
	for gold in get_tree().get_nodes_in_group("gold_underground"):
		var distance_to_this_gold : float = gold.global_position.distance_to(global_position);
		if distance_to_this_gold < distance_to_closest_gold_underground:
			distance_to_closest_gold_underground = distance_to_this_gold;
			closest_gold_underground = gold;
	
	match current_state:
		State.IDLE:
			if (fear > 0.00 && distance_from_player < fear * fear_distance_multiplier):
				return State.DIGGING_DOWN;	
			if (closest_food):
				return State.SEEKING_FOOD;
			if (closest_gold_underground):
				return State.SEEKING_GOLD;
			if love > 0.0 && distance_from_player > player_distance_preference * 2:
				return State.FOLLOWING_PLAYER;
			return State.IDLE;
		State.DIGGING_DOWN:
			if animation_state.get_current_node() == "Underground":
				return State.UNDERGROUND;
			return State.DIGGING_DOWN;
		State.UNDERGROUND:
			if (fear > 0.00 && distance_from_player > fear * fear_distance_multiplier):
				return State.DIGGING_UP;
			return State.UNDERGROUND;
		State.DIGGING_UP:
			if animation_state.get_current_node() == "Idle":
				return State.IDLE;
			return State.DIGGING_UP;
		State.SEEKING_FOOD:
			if not closest_food:
				return State.IDLE;
			if (fear > 0.00 && distance_from_player < fear * fear_distance_multiplier):
				return State.DIGGING_DOWN;	
			return State.SEEKING_FOOD;
		State.FOLLOWING_PLAYER:
			if closest_food:
				return State.SEEKING_FOOD;
			if closest_gold_underground:
				return State.SEEKING_GOLD
			if distance_from_player <= player_distance_preference:
				return State.IDLE;
			return State.FOLLOWING_PLAYER;
		State.SEEKING_GOLD:
			if on_this_gold:
				return State.DIGGING_DOWN;
			return State.SEEKING_GOLD;
	return State.IDLE


func _transition_to_state(prior_state : int, next_state : int) -> void:
	match next_state:
		State.UNDERGROUND:
			match prior_state:
				State.DIGGING_DOWN:
					if on_this_gold:
						on_this_gold.queue_free();
						on_this_gold = null;
						var gold = gold_resource.instance();
						# TODO Tweak this
						gold.position += Vector2(0,5);
						add_child(gold);
								# TODO Better way to do this?
					for child in get_children():
						if child.is_in_group("gold"):
							child.visible = false;
			collision_layer = 2;
			collision_mask = 2;
		State.IDLE:
			match prior_state:
				State.DIGGING_UP:
					collision_layer = 1;
					collision_mask = 1;
					# TODO Better way to do this?
					for child in get_children():
						if child.is_in_group("gold"):
							child.visible = true;
				State.FOLLOWING_PLAYER:
					# TODO Better way to do this?
					if love > 0.0:
						for child in get_children():
							if child.is_in_group("gold"):
								var g_pos = child.global_position;
								remove_child(child);
								emit_signal("place_item", child, g_pos);
				


func _act() -> void:
	match current_state:
		State.IDLE:
			$Sprite/AnimationTree.set(
				"parameters/Idle/blend_position", 
				Vector2.ZERO);
		State.DIGGING_DOWN:
			animation_state.travel("Digging Down");
		State.UNDERGROUND:
			pass
		State.DIGGING_UP:
			animation_state.travel("Digging Up");
		State.SEEKING_FOOD:
			_move_towards(closest_food.position);
		State.FOLLOWING_PLAYER:
			_move_towards(player.position);
		State.SEEKING_GOLD:
			_move_towards(closest_gold_underground.position);

# TODO Pathfinding
func _move_towards(position_to_move_towards) -> void:
	var direction := position.direction_to(position_to_move_towards);

	var direction_normalized := direction.normalized();

	move_and_slide(direction_normalized * speed);

	$Sprite/AnimationTree.set(
		"parameters/Idle/blend_position", 
		Vector2(
			direction_normalized.x, 
			-direction_normalized.y));
