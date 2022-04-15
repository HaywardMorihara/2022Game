extends Node2D


var apple_resource


# Called when the node enters the scene tree for the first time.
func _ready():
	apple_resource = preload("res://world/items/food/Apple.tscn");


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Player_place_item(position):
	var apple = apple_resource.instance();
	apple.position = position;
	$YSort.add_child(apple);
