extends Sprite2D


func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventScreenTouch:
		if event.pressed == true:
			$AnimationPlayer.play("new_animation")
			await get_tree().create_timer(2.0).timeout
			$AnimationPlayer.stop()
