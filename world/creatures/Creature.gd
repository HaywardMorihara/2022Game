extends KinematicBody2D

# TODO Figure out how inheritance should work here...

export var speed : float = 75

var animation_state

# Called when the node enters the scene tree for the first time.
func _ready():
	animation_state = $Sprite/AnimationTree.get("parameters/playback");
	animation_state.travel("Digging Down");


func _process(delta):
	pass
	# TODO
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
