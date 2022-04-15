extends KinematicBody2D

signal place_item(position)

export var speed : float = 100

var inventory = {}

func _process(delta: float) -> void:
	var input_direction := Vector2.ZERO;
	input_direction.x = Input.get_axis("ui_left", "ui_right");
	input_direction.y = Input.get_axis("ui_up", "ui_down")
	
	var input_direction_normalized := input_direction.normalized();
	
	move_and_slide(input_direction_normalized * speed);

	if Input.is_action_just_pressed("ui_accept") && inventory.has("apple") && inventory["apple"] > 0:
		inventory["apple"] -= 1;
		# TODO Make this in the direction that the player is "pointed"
		var placement_offset = Vector2(0,10);
		emit_signal("place_item", position + placement_offset);

	$Sprite/AnimationTree.set(
		"parameters/Idle/blend_position", 
		Vector2(
			input_direction_normalized.x, 
			-input_direction_normalized.y));

	var apple_count = 0
	if inventory.has("apple"):
		apple_count = inventory["apple"]
	$CanvasLayer/HBoxContainer/AppleCount.text = "x%s" % apple_count
