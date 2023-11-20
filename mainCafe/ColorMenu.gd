extends MenuButton

var counter = 0

func _on_item_pressed(id):
	if id == 1:
		$"../ParallaxBackground/Img1060".modulate = Color(0.862745, 0.0784314, 0.235294, 1)
	if id == 2:
		$"../ParallaxBackground/Img1060".modulate = Color(0, 1, 1, 1)
	if id == 3:
		$"../ParallaxBackground/Img1060".modulate = Color(0.560784, 0.737255, 0.560784, 1)
	if id == 4:
		$"../ParallaxBackground/Img1060".modulate = Color(0.541176, 0.168627, 0.886275, 1)
	if id == 5:
		$"../ParallaxBackground/Img1060".modulate = Color(0.6, 0.196078, 0.8, 1)
	if id == 6:
		$"../ParallaxBackground/Img1060".modulate = Color(1, 0, 1, 1)
	if id == 7:
		$"../ParallaxBackground/Img1060".modulate = Color(0.411765, 0.411765, 0.411765, 1)
	if id == 8:
		$"../ParallaxBackground/Img1060".modulate = Color(0.854902, 0.647059, 0.12549, 1)

# Called when the node enters the scene tree for the first time.
func _ready():
	for item in Global.color_purchased.keys():
		if Global.color_purchased[item] == true :
			counter = counter + 1
			$".".get_popup().add_item(item, counter)
	$".".get_popup().id_pressed.connect(_on_item_pressed)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
