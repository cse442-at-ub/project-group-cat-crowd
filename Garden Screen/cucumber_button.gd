extends TouchScreenButton


func _on_pressed():
	if PlantGame.cucumber == false:
		if Global.cat_coins >= 30:
			PlantGame.cucumber = true
			Global.cat_coins = Global.cat_coins - 30
			PlantGame.plant_purchased["Cucumber"] = true
			get_tree().change_scene_to_file("res://Garden Screen/planting.tscn")
		else:
			$"../../CurrencyPopup".visible = true
			await get_tree().create_timer(3.0).timeout
			$"../../CurrencyPopup".visible = false

