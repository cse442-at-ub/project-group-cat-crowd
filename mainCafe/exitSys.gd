extends Button



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

"""
signal switch_scene_with_frame(frame: int)

func _on_pressed():
	var scene_b = preload("res://mainCafe/cafeScreen.tscn")
	var instance = scene_b.instantiate()
	instance.set("animated_frame", $catOptions.frame)
	get_tree().get_root().add_child(instance)
	queue_free()  # Remove SceneA from the scene tree
"""

func _on_pressed():
	var frame = $catOptions.frame
	emit_signal("switch_scene_with_frame", frame)

	var scene_b = preload("res://mainCafe/cafeScreen.tscn")
	var instance = scene_b.instantiate()
	get_tree().get_root().add_child(instance)
	queue_free()  # Remove SceneA from the scene tree



	




