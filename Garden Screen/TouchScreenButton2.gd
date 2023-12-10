extends TouchScreenButton


func _on_pressed():
	if not $onion_plant.visible and not $onion_plant2.visible and not $onion_plant3.visible and not $onion_plant4.visible:
		get_tree().change_scene_to_file("res://Garden Screen/plant_shop.tscn")
	elif $onion_plant4.visible:
		GlobalVeggies.onion += 1
		PlantGame.onion = false
		GardenTimer.onionTimer = 0
		$onion_plant4.hide()
