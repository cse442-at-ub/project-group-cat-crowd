extends Button



func _on_pressed():
	var animated_sprite = $catOptions

	# Decrement the frame and wrap it to the range [0, 5]
	animated_sprite.frame = (animated_sprite.frame - 1 + 6) % 6

	

