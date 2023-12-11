extends CanvasLayer
@onready var line_edit = get_node("TextureRect/LineEdit")

func _ready():
	line_edit.grab_focus()

func _on_texture_button_pressed():
	line_edit.editable = false
	print("yes")
	print(line_edit.text)
