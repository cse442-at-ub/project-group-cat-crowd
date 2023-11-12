extends Node


var dragging = false


func _ready():
	# Connect to the Area2D input signal so we know when the user clicks on it
	get_node("ClickArea").node_ready.connect("input_event", self, "_on_area_input_event")
	set_process_input(true)


func _on_area_input_event(viewport, event, shape):
	if event is InputEventScreenTouch:
		# Start dragging when the user presses the mouse button over the clickable area
		dragging = event.pressed


func _input(event):
	if dragging:
		if event is InputEventScreenTouch:
			var motion = event.relative_pos
			var new_pos = get_global_mouse_pos()
			var prev_pos = new_pos - motion
			var center = get_global_pos()
			# Calculate the angular motion of the crank based on the arc made with the mouse
			var angle = (prev_pos - center).angle_to(new_pos - center)
			rotate(angle)

		elif event.type == InputEvent.MOUSE_BUTTON and event.pressed == false:
			# Stop dragging when the user releases the mouse button
			dragging = false
