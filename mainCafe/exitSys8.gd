extends Button


func _on_pressed():
	if Global.cat_purchased["Sphynx"] == true:
		Global.selectedCatFrame = 8
		get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
	else:
		$"../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../CurrencyPopup".visible = false
