extends Button

@onready var frame = $catOptions.frame
#signal get_frame(frame)


func _on_pressed():
	#emit_signal("get_frame",frame)
	#print(frame)
	
	frame = Global.selectedCatFrame
	
	get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
	queue_free()
	



	




