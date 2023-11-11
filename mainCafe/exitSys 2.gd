extends Button

@onready var frame = $catOptions.frame
signal get_frame(frame)


func _on_pressed():
	emit_signal("get_frame",frame)
	print(frame)
	get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
	queue_free()
	#g

	
	#var scene = preload("cafeScreen.tscn").instantiate()
	#get_tree().get_root().add_child(scene)

	#var scenescript = scene.get_node("exitSys")
	
	#"""
	#var frame = $catOptions.frame
	#emit_signal("switch_scene_with_frame", frame)

	#var scene_b = preload("res://mainCafe/cafeScreen.tscn")
	#var instance = scene_b.instantiate()
	#get_tree().get_root().add_child(instance)
	#queue_free()  
	#"""



	




