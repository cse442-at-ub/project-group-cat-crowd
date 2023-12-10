extends Button


func _on_pressed():
	# Get the AnimatedSprite2D node
	var animated_sprite = $catOptions

	# Increment the frame and wrap it to the range [0, 5]
	animated_sprite.frame = (animated_sprite.frame + 1) % 6

