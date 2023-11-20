extends TouchScreenButton


func _on_pressed():
	PlantGame.cucumber = true
	if Global.cat_coins >= 30:
		Global.cat_coins = Global.cat_coins - 30
		PlantGame.plant_purchased["Cucumber"] = true
		GlobalVeggies.cucumber += 1
		print(GlobalVeggies.cucumber)
		print(Global.cat_coins)
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
	get_tree().change_scene_to_file("res://Garden Screen/planting.tscn")

