extends ViewportContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func pause_menu():
	$PauseMenu.popup();
	get_tree().paused = true;


# Called when the node enters the scene tree for the first time.
func _ready():
	$AcceptDialog.popup();
	get_tree().paused = true;

func _process(delta):
	if Global.WIN_CONDITIONS_MET:
		$AcceptDialog.popup();
		$AcceptDialog.window_title = "You \"WON\"!"
		$AcceptDialog.dialog_text = "You collected all 10 pieces of gold!"
		get_tree().paused = true;
		Global.WIN_CONDITIONS_MET = false;

func _on_AcceptDialog_popup_hide():
	get_tree().paused = false;


func _on_MainMenuButton_pressed():
	get_tree().change_scene("res://ui/menus/MainMenu.tscn");
	get_tree().paused = false;


func _on_ResumeButton_pressed():
	$PauseMenu.hide();
	get_tree().paused = false;
