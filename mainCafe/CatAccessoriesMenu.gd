extends MenuButton

var counter = 0

func _on_item_pressed(id):
	var newID = get_popup().get_item_text(id)
	match newID:
		"Shirt":
			$"../../CanvasLayer/TextureRect/Shirt".visible = true
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tophat".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = false
		"Bell":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tophat".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = true
		"BFF":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = true
			$"../../CanvasLayer/TextureRect/Tophat".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = false
		"Bowtie":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tophat".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = true
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = false
		"Necklace":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tophat".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = true
			$"../../CanvasLayer/TextureRect/Bell".visible = false
		"Tie":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tophat".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = true
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = false
		"Tophat":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tophat".visible = true
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = false

# Called when the node enters the scene tree for the first time.
func _ready():
	for item in Global.accessory_purchased.keys():
		if Global.accessory_purchased[item] == true :
			$".".get_popup().add_item(item, counter)
			counter = counter + 1
	$".".get_popup().id_pressed.connect(_on_item_pressed)
