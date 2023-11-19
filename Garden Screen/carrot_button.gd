extends TouchScreenButton


func _on_pressed():
	PlantGame.carrot = true
	if Global.cat_coins >= 15:
		Global.cat_coins = Global.cat_coins - 15
		PlantGame.plant_purchased["Carrot"] = true
		GlobalVeggies.carrot += 1
		print(GlobalVeggies.carrot)
		print(Global.cat_coins)
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
	get_tree().change_scene_to_file("res://Garden Screen/planting.tscn")
