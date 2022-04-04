extends Node


func _ready():
	$VBoxContainer/ViewportContainer/Viewport/Camera2D.set("target", $VBoxContainer/ViewportContainer/Viewport/World/Player)
