extends Node2D


func _on_navigate_to_cafe_pressed():
	get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")


func _on_navigate_to_shop_pressed():
	get_tree().change_scene_to_file("res://Cat Shop/Cat Shop.tscn")
