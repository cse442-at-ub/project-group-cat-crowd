extends TouchScreenButton


func _on_pressed():
	print(GlobalVeggies.tomato)
	get_tree().change_scene_to_file("res://Kitchen/cookingMinigame/cookingGame.tscn")
