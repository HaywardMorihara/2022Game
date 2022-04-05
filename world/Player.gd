extends KinematicBody2D

export var speed : float = 100

func _process(delta: float) -> void:
	
	var input_direction := Vector2.ZERO;
	input_direction.x = Input.get_axis("ui_left", "ui_right");
	input_direction.y = Input.get_axis("ui_up", "ui_down")
	
	var input_direction_normalized := input_direction.normalized();
	
	
	move_and_slide(input_direction_normalized * speed);

	$Sprite/AnimationTree.set(
		"parameters/Idle/blend_position", 
		Vector2(
			input_direction_normalized.x, 
			-input_direction_normalized.y));
