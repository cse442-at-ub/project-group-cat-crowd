extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_tree_input_event(viewport, event, shape_idx):
	if event is InputEventScreenTouch:
		if event.pressed == true:
			$AnimatedTree.play("default")
			await get_tree().create_timer(1.0).timeout
			$AnimatedTree.stop()
