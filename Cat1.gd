extends Sprite2D


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventScreenTouch:
		if  event.pressed == true:
			$cat1_ani.play()
			await get_tree().create_timer(2.0).timeout
			$cat1_ani.stop()
