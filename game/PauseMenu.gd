extends PopupDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$ResumeButton.grab_focus();


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if visible:
		if Input.is_action_just_pressed("ui_up"):
			$MainMenuButton.grab_focus();
		elif Input.is_action_just_pressed("ui_down"):
			$ResumeButton.grab_focus();
