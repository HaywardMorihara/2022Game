extends Sprite

export var speed : float = 200

func _process(delta: float) -> void:
	
	var move := Vector2.ZERO;
	move.x = Input.get_axis("ui_left", "ui_right");
	move.y = Input.get_axis("ui_up", "ui_down")
	
	position += move.normalized() * speed * delta;

	$AnimationTree.set("parameters/Idle/blend_position", Vector2(move.x, -move.y));
