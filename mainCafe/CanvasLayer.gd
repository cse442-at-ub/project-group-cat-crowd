extends CanvasLayer



@onready var line_edit = get_node("TextureRect/LineEdit")
# Called when the node enters the scene tree for the first time.
func _ready():
	line_edit.grab_focus()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	line_edit.editable = false
	print("yes")
	print(line_edit.text)

