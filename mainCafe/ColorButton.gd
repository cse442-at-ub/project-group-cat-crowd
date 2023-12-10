extends MenuButton

var counter = 0

func _on_item_pressed(id):
	var newID = get_popup().get_item_text(id)
	match newID:
		"Red":
			$"../../ParallaxBackground/Img1060".modulate = Color(0.862745, 0.0784314, 0.235294, 1)
		"Cyan":
			$"../../ParallaxBackground/Img1060".modulate = Color(0, 1, 1, 1)
		"Green":
			$"../../ParallaxBackground/Img1060".modulate = Color(0.560784, 0.737255, 0.560784, 1)
		"Blue":
			$"../../ParallaxBackground/Img1060".modulate = Color(0.254902, 0.411765, 0.882353, 1)
		"Purple":
			$"../../ParallaxBackground/Img1060".modulate = Color(0.6, 0.196078, 0.8, 1)
		"Pink":
			$"../../ParallaxBackground/Img1060".modulate = Color(1, 0, 1, 1)
		"Midnight":
			$"../../ParallaxBackground/Img1060".modulate = Color(0.411765, 0.411765, 0.411765, 1)
		"Gold":
			$"../../ParallaxBackground/Img1060".modulate = Color(0.854902, 0.647059, 0.12549, 1)

# Called when the node enters the scene tree for the first time.
func _ready():
	for item in Global.color_purchased.keys():
		if Global.color_purchased[item] == true :
			$".".get_popup().add_item(item, counter)
			counter = counter + 1
	$".".get_popup().id_pressed.connect(_on_item_pressed)
