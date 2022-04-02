extends Sprite

export var speed : float = 200

func _process(delta: float) -> void:
	
	# Movement using Input functions:
	var move := Vector2.ZERO
	move.x = Input.get_axis("ui_left", "ui_right")
	move.y = Input.get_axis("ui_up", "ui_down")
	position += move * speed * delta
