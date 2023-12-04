extends TouchScreenButton


func _on_pressed():
	if not $potato_plant.visible and not $potato_plant2.visible and not $potato_plant3.visible:
		get_tree().change_scene_to_file("res://Garden Screen/plant_shop.tscn")
	elif $potato_plant3.visible:
		GlobalVeggies.potato += 1
		PlantGame.potato = false
		GardenTimer.potTimer = 0
		$potato_plant3.hide()
