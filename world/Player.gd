extends KinematicBody2D

signal place_item(position)

export var speed : float = 100

var inventory = {}

func pickup(item_name: String) -> bool:
	if inventory.has(item_name):
		inventory[item_name] += 1;
	else:
		inventory[item_name] = 1;
	# TODO Move to a general _sfx() function
	match item_name:
		"apple":
			$ApplePickup.play();
		"gold":
			$GoldPickup.play();
	return true

func _process(delta: float) -> void:
	var input_direction := Vector2.ZERO;
	input_direction.x = Input.get_axis("ui_left", "ui_right");
	input_direction.y = Input.get_axis("ui_up", "ui_down")
	
	# Clamping so we don't lose small increments by joysticks
	var input_direction_clamped := input_direction.clamped(1.0);
	move_and_slide(input_direction_clamped * speed);

	if Input.is_action_just_pressed("ui_accept") && inventory.has("apple") && inventory["apple"] > 0:
		inventory["apple"] -= 1;
		# TODO Make this in the direction that the player is "pointed"
		var placement_offset = Vector2(0, 20);
		emit_signal("place_item", position + placement_offset);
		# TODO Move to a general _sfx() function
		$ApplePlacement.play();

	# Noramlizing so the blend tree can recognize which direction should be animated, even if it's a small increment
	var input_direction_normalized := input_direction.normalized();
	$Sprite/AnimationTree.set(
		"parameters/Idle/blend_position", 
		Vector2(
			input_direction_normalized.x, 
			-input_direction_normalized.y));

	# TODO Refactor
	var apple_count = 0
	if inventory.has("apple"):
		apple_count = inventory["apple"];
	$CanvasLayer/HBoxContainer/AppleCount.text = "x%s" % apple_count;
	var gold_count = 0
	if inventory.has("gold"):
		gold_count = inventory["gold"];
	$CanvasLayer/HBoxContainer/GoldCount.text = "x%s" % gold_count;
	
	if input_direction != Vector2.ZERO && not $Footsteps.playing:
		$Footsteps.play();
	
