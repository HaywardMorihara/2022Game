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
	if body.is_in_group("player"):
		if body.inventory.has(food_name):
			body.inventory[food_name] += 1;
		else:
			body.inventory[food_name] = 1;
		queue_free();
	elif body.is_in_group("creature"):
		queue_free();
		# TODO Make the creature like the player
	
