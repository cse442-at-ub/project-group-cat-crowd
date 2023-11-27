extends Node2D


func _on_nav_to_cafe_pressed():
	get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")


func _on_nav_to_shop_pressed():
	get_tree().change_scene_to_file("res://Cat Shop/Cat Shop.tscn")


func _on_touch_screen_button_pressed():
	get_tree().change_scene_to_file("res://lounge_minigame.tscn")
