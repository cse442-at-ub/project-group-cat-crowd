extends Button

func _ready():
	$catOptions.visible = false


func _on_pressed():
	# Get the AnimatedSprite2D node
	var animated_sprite = $catOptions

	# Increment the frame and wrap it to the range [0, 5]
	var next = (animated_sprite.frame + 1) % 8
	print(Global.catsAvailable[next])
	if Global.catsAvailable[next]:
		$catOptions.visible  = true
		animated_sprite.frame = next
		Global.selectedCatFrame = next

		
	#else:
		#Global.selectedCatFrame = 
		
	print(Global.selectedCatFrame)
	#print(animated_sprite.frame)
	
	
	

