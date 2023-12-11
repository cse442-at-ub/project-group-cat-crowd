extends MenuButton

var counter = 0

func _on_item_pressed(id):
	var newID = get_popup().get_item_text(id)
	match newID:
		"Red":
			Global.colorSelected = "Red"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Cyan":
			Global.colorSelected = "Cyan"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Green":
			Global.colorSelected = "Green"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Blue":
			Global.colorSelected = "Blue"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Purple":
			Global.colorSelected = "Purple"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Pink":
			Global.colorSelected = "Pink"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Midnight":
			Global.colorSelected = "Midnight"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Gold":
			Global.colorSelected = "Gold"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for item in Global.color_purchased.keys():
		if Global.color_purchased[item] == true :
			$".".get_popup().add_item(item, counter)
			counter = counter + 1
	$".".get_popup().id_pressed.connect(_on_item_pressed)
