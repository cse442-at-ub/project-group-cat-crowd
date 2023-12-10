extends TouchScreenButton


func _on_pressed():
	if not $carrot_plant.visible and not $carrot_plant2.visible and not $carrot_plant3.visible:
		get_tree().change_scene_to_file("res://Garden Screen/plant_shop.tscn")
	elif $carrot_plant3.visible:
		PlantGame.carrot = false
		GlobalVeggies.carrot += 1
		GardenTimer.carrTimer = 0
		$carrot_plant3.hide()
