extends TouchScreenButton



func _on_pressed():
	if not $corn_plant.visible and not $corn_plant2.visible and not $corn_plant3.visible:
		get_tree().change_scene_to_file("res://Garden Screen/plant_shop.tscn")
	elif $corn_plant3.visible:
		GlobalVeggies.corn += 1
		PlantGame.corn = false
		GardenTimer.cornTimer = 0
		$corn_plant3.hide()
