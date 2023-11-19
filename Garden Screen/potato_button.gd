extends TouchScreenButton




func _on_pressed():
	PlantGame.potato = true
	if Global.cat_coins >= 35:
		Global.cat_coins = Global.cat_coins - 35
		PlantGame.plant_purchased["Potato"] = true
		GlobalVeggies.potato += 1
		print(GlobalVeggies.potato)
		print(Global.cat_coins)
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
	get_tree().change_scene_to_file("res://Garden Screen/planting.tscn")
