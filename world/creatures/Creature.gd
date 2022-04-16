extends KinematicBody2D

# TODO Figure out how inheritance should work here...

export var fear : float = 1.0
export var love : float = 0.0

export var speed : float = 75.0
export var fear_distance_multiplier : float = 50.0

var environment : YSort
var player : KinematicBody2D
var closest_food : Area2D
var target

enum State {IDLE, DIGGING_DOWN, UNDERGROUND, DIGGING_UP, FOLLOWING_PLAYER, SEEKING_FOOD};
var current_state : int
var animation_state : AnimationNodeStateMachinePlayback;

# AI Terms (web.pdx.edu/~arhodes/ai5.pdf)
# Environment, Percepts, Sensors, Agent, _actuators, _actions

# Called when the node enters the scene tree for the first time.
func _ready():
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
	$StateLabel.text = State.keys()[current_state];

# TODO Any nice way to generate a state graph?
func _determine_next_state() -> int:
	var distance_from_player := player.global_position.distance_to(global_position);
	
	# TODO Need a way to check for nearby food....anyway to do this efficiently?
	closest_food = environment.get_node("Apple");
	
	# TODO I don't like how I'm looking at the animation to determine the state - it should be one-way
	match current_state:
		State.IDLE:
			if (fear > 0.00 && distance_from_player < fear * fear_distance_multiplier):
				return State.DIGGING_DOWN;	
			if (closest_food):
				return State.SEEKING_FOOD;
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
			if (fear > 0.00 && distance_from_player < fear * fear_distance_multiplier):
				return State.DIGGING_DOWN;	
			return State.SEEKING_FOOD;
	
	return State.IDLE


func _transition_to_state(prior_state : int, next_state : int) -> void:
	match next_state:
		State.UNDERGROUND:
			collision_layer = 2;
			collision_mask = 2;
		State.IDLE:
			match prior_state:
				State.DIGGING_UP:
					collision_layer = 1;
					collision_mask = 1;
		State.SEEKING_FOOD:
			target = closest_food
			closest_food = null	


func _act() -> void:
	match current_state:
		State.DIGGING_DOWN:
			animation_state.travel("Digging Down");
		State.DIGGING_UP:
			animation_state.travel("Digging Up");
		State.SEEKING_FOOD:
			_move_towards(target.position)

# TODO Pathfinding
func _move_towards(position_to_move_towards) -> void:
	var direction := position.direction_to(position_to_move_towards);

	var direction_normalized := direction.normalized();

	move_and_slide(direction_normalized * speed);

	$Sprite/AnimationTree.set(
		"parameters/BlendSpace2D/blend_position", 
		Vector2(
			direction_normalized.x, 
			-direction_normalized.y));
