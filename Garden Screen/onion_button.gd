extends TouchScreenButton




func _on_pressed():
	if PlantGame.onion == false:
		if Global.cat_coins >= 25:
			PlantGame.onion = true
			Global.cat_coins = Global.cat_coins - 25
			PlantGame.plant_purchased["Onion"] = true
			get_tree().change_scene_to_file("res://Garden Screen/planting.tscn")
		else:
			$"../../CurrencyPopup".visible = true
			await get_tree().create_timer(3.0).timeout
			$"../../CurrencyPopup".visible = false
