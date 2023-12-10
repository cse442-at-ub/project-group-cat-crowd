extends TouchScreenButton


func _on_pressed():
	if not $tomato_plant.visible and not $tomato_plant2.visible and not $tomato_plant3.visible and not $tomato_plant4.visible:
		get_tree().change_scene_to_file("res://Garden Screen/plant_shop.tscn")
	elif $tomato_plant4.visible:
		GlobalVeggies.tomato += 1
		PlantGame.tomato = false
		GardenTimer.tomTimer = 0
		$tomato_plant4.hide()
