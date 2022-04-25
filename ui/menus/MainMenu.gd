extends Control


onready var start_button = $StartButton
onready var credits_button = $CreditsButton


# Called when the node enters the scene tree for the first time.
func _ready():
	$StartButton.grab_focus();


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		$StartButton.grab_focus();
	elif Input.is_action_just_pressed("ui_down"):
		$CreditsButton.grab_focus();


func _on_StartButton_pressed():
	get_tree().change_scene("res://game/Game.tscn");


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://ui/menus/CreditsMenu.tscn");
