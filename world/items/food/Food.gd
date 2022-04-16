extends Area2D

export var food_name : String

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Food_body_entered(body):
	# TODO This is going to bite me in the ass at some point, isn't it?
	if body.name != "Player":
		return
	if body.inventory.has(food_name):
		body.inventory[food_name] += 1;
	else:
		body.inventory[food_name] = 1;
	print(body.inventory);
	queue_free();
