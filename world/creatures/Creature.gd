extends KinematicBody2D

# TODO Figure out how inheritance should work here...

export var speed : float = 75

var environment : YSort
var player : KinematicBody2D

enum State {IDLE, DIGGING_DOWN, UNDERGROUND, DIGGING_UP, FOLLOWING};
var current_state : int
var animation_state : AnimationNodeStateMachinePlayback;

# AI Terms (web.pdx.edu/~arhodes/ai5.pdf)
# Environment, Percepts, Sensors, Agent, Actuators, Actions

# Called when the node enters the scene tree for the first time.
func _ready():
	# TODO Temporary hack
	environment = get_parent();
	player = environment.get_node("Player");
	
	animation_state = $Sprite/AnimationTree.get("parameters/playback");
	
	# So that I don't have to always turn this off when I want to get a frame to set in AnimationPlayer
	$Sprite/AnimationTree.active = true;


func _process(delta):
	current_state = determine_state();
#	print("State is now: %s" % current_state)
	act()

func determine_state() -> int:
	var distance_from_player := player.global_position.distance_to(global_position);
	
	# TODO I don't like how I'm looking at the animation to determine the state - it should be one-way
	match current_state:
		State.IDLE:
			if (distance_from_player < 100):
				return State.DIGGING_DOWN;	
			return State.IDLE;
		State.DIGGING_DOWN:
			if animation_state.get_current_node() == "Underground":
				return State.UNDERGROUND;
			return State.DIGGING_DOWN;
		State.UNDERGROUND:
			if (distance_from_player > 100):
				return State.DIGGING_UP;
			return State.UNDERGROUND;
		State.DIGGING_UP:
			if animation_state.get_current_node() == "Idle":
				return State.IDLE;
			return State.DIGGING_UP;
		
	return State.IDLE

func act() -> void:
	match current_state:
		State.DIGGING_DOWN:
			animation_state.travel("Digging Down");
		State.DIGGING_UP:
			print(animation_state.get_current_node());
			animation_state.travel("Digging Up");

#	var direction := Vector2.ZERO;
#
#	var direction_normalized := direction.normalized();
#
#	move_and_slide(direction_normalized * speed);
#
#	$Sprite/AnimationTree.set(
#		"parameters/BlendSpace2D/blend_position", 
#		Vector2(
#			direction_normalized.x, 
#			-direction_normalized.y));
