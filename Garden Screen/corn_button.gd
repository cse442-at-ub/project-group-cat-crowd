extends TouchScreenButton


func _on_pressed():
	if PlantGame.corn == false:
		PlantGame.corn = true
		if Global.cat_coins >= 20:
			Global.cat_coins = Global.cat_coins - 20
			PlantGame.plant_purchased["Corn"] = true
		else:
			$"../../CurrencyPopup".visible = true
			await get_tree().create_timer(3.0).timeout
			$"../../CurrencyPopup".visible = false
		get_tree().change_scene_to_file("res://Garden Screen/planting.tscn")
