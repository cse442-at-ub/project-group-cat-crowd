extends MenuButton

var counter = 0

func _on_item_pressed(id):
	var newID = get_popup().get_item_text(id)
	var frame = Global.selectedCatFrame
	match newID:
		"Shirt":
			Global.accessory_selected = "Shirt"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Tie":
			Global.accessory_selected = "Tie"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Bell":
			Global.accessory_selected = "Bell"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"BFF":
			Global.accessory_selected = "BFF"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Bowtie":
			Global.accessory_selected = "Bowtie"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Necklace":
			Global.accessory_selected = "Necklace"
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")
		"Tophat":
			Global.topHat = !Global.topHat
			get_tree().change_scene_to_file("res://mainCafe/cafeScreen.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for item in Global.accessory_purchased.keys():
		if Global.accessory_purchased[item] == true :
			$".".get_popup().add_item(item, counter)
			counter = counter + 1
	$".".get_popup().id_pressed.connect(_on_item_pressed)
