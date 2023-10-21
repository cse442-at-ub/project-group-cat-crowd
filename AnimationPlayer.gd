extends AnimatedSprite2D

func _process(_event):
	if Input.is_action_pressed("ui_right"):
		play("sleeping_kitten")
	else:
		stop()


func _on_visibility_changed():
	pass # Replace with function body.
