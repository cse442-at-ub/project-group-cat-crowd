extends Sprite2D


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed == true:
			$cat_ani.play()
			$Bubble.hide()
			
