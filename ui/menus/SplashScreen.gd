extends Control


export var wait_time := 2.5

var progress := 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress += delta;
	var progress_percent := progress / wait_time;
	$ProgressBar.set_value(progress_percent * 100);
	if progress_percent >= 1.0:
		get_tree().change_scene("res://ui/menus/MainMenu.tscn");
