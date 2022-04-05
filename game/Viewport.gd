extends Viewport


# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera2D.set("target", $World/YSort/Player)
