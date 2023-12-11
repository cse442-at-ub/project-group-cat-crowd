extends CanvasLayer
@onready var line_edit = get_node("TextureRect/LineEdit")

func _ready():
	line_edit.grab_focus()

func _on_texture_button_pressed():
	line_edit.editable = false
	Global.lineText = line_edit.text
