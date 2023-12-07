extends TouchScreenButton


func _on_pressed():
	if not $cucumber_plant.visible and not $cucumber_plant2.visible and not $cucumber_plant3.visible:
		get_tree().change_scene_to_file("res://Garden Screen/plant_shop.tscn")
	elif $cucumber_plant3.visible:
		GlobalVeggies.cucumber += 1
		PlantGame.cucumber = false
		GardenTimer.cucTimer = 0
		$cucumber_plant3.hide()
