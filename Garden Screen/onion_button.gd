extends TouchScreenButton




func _on_pressed():
	if PlantGame.onion == false:
		PlantGame.onion = true
		if Global.cat_coins >= 25:
			Global.cat_coins = Global.cat_coins - 25
			PlantGame.plant_purchased["Onion"] = true
		else:
			$"../../CurrencyPopup".visible = true
			await get_tree().create_timer(3.0).timeout
			$"../../CurrencyPopup".visible = false
		get_tree().change_scene_to_file("res://Garden Screen/planting.tscn")
