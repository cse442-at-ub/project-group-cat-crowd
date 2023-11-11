extends TouchScreenButton


func _on_pressed():
	PlantGame.corn = true
	get_tree().change_scene_to_file("res://Garden Screen/planting.tscn")
