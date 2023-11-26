extends MenuButton

var counter = 0

func _on_item_pressed(id):
	var newID = get_popup().get_item_text(id)
	match newID:
		"Shirt":
			print("Shirt")
		"Bell":
			print("Bell")
		"BFF":
			print("BFF")
		"Bowtie":
			print("Bowtie")
		"Necklace":
			print("Necklace")
		"Tie":
			print("Tie")
		"Tophat":
			print("Tophat")

# Called when the node enters the scene tree for the first time.
func _ready():
	for item in Global.accessory_purchased.keys():
		if Global.accessory_purchased[item] == true :
			$".".get_popup().add_item(item, counter)
			counter = counter + 1
	$".".get_popup().id_pressed.connect(_on_item_pressed)
