extends Sprite2D

func _on_area_tree_input_event(_viewport, event, _shape_idx):
	if event is InputEventScreenTouch:
		if event.pressed == true:
			$AnimatedTree.play("default")
			await get_tree().create_timer(1.0).timeout
			$AnimatedTree.stop()
