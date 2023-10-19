extends Sprite2D


func _on_area_food_input_event(viewport, event, shape_idx):
	if event is InputEventScreenTouch:
		if event.pressed == true:
			$AnimatedFood.play("default")
			await get_tree().create_timer(0.5).timeout
			$AnimatedFood.stop()
