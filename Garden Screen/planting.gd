extends Node2D

@onready var cucumber_timer = get_node("")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	if PlantGame.tomato:
		$TextureRect/tomato/tomato_plant.show()
		
	if PlantGame.onion:
		$TextureRect/onion/onion_plant.show()
	if PlantGame.cucumber:
		$TextureRect/cucumber/cucumber_plant.show()
	if PlantGame.corn:
		$TextureRect/corn/corn_plant.show()
	if PlantGame.potato:
		$TextureRect/potato/potato_plant.show()
	if PlantGame.carrot:
		$TextureRect/carrot/carrot_plant.show()
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_carrot_pressed():
	pass # Replace with function body.


func _on_touch_screen_button_pressed():
	pass # Replace with function body.

func _on_tomato_finish ():
	
	pass
