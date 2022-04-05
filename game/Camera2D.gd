extends Camera2D


var target = null

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if target:
		position = target.position
