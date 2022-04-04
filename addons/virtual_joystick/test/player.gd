extends Sprite

export var speed : float = 200

func _process(delta: float) -> void:
	
	# Movement using Input functions:
	var move := Vector2.ZERO;
	move.x = Input.get_axis("ui_left", "ui_right");
	move.y = Input.get_axis("ui_up", "ui_down");
	# TODO Isn't properly normalizing keys - may want to make this a Kinematic Body
	move.normalized();
	position += move * speed * delta;

	# TODO Idle State: https://www.youtube.com/watch?v=Xf2RduncoNU&list=PLeabIjIyXm8l3DipnRigjze07uy3kdPSe&index=24
	$AnimationTree.set("parameters/Idle/blend_position", Vector2(move.x, -move.y));
