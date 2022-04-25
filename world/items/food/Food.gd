extends Area2D

export var food_name : String

var placed_by_player := false;


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_Food_body_entered(body):
	if body.is_in_group("player"):
		var was_picked_up = body.pickup(food_name);
		if was_picked_up:
			queue_free();
	elif body.is_in_group("creature"):
		body.eat(self);
		queue_free();
	
