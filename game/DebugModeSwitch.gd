extends CheckButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pressed = Global.DEBUG_MODE;


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_DebugModeSwitch_toggled(button_pressed):
	Global.DEBUG_MODE = button_pressed;
	print("Debug Mode set to %s" % button_pressed);
