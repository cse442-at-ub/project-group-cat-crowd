extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	
	if PlantGame.tomato and GardenTimer.tomTimer == 0:
		$TextureRect/tomato/tomato_plant.show()
		GardenTimer.growTom = true
	if PlantGame.onion and GardenTimer.onionTimer == 0:
		$TextureRect/onion/onion_plant.show()
		GardenTimer.growOnion = true
	if PlantGame.cucumber and GardenTimer.cucTimer == 0:
		$TextureRect/cucumber/cucumber_plant.show()
		GardenTimer.growCuc = true
	if PlantGame.corn and GardenTimer.cornTimer == 0:
		$TextureRect/corn/corn_plant.show()
		GardenTimer.growCorn = true
	if PlantGame.potato and GardenTimer.potTimer == 0:
		$TextureRect/potato/potato_plant.show()
		GardenTimer.growPot = true
	if PlantGame.carrot and GardenTimer.carrTimer == 0:
		$TextureRect/carrot/carrot_plant.show()
		GardenTimer.growCarr = true
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if 2<GardenTimer.tomTimer and GardenTimer.tomTimer<4:
		$TextureRect/tomato/tomato_plant.hide()
		$TextureRect/tomato/tomato_plant2.show()
	elif 4<GardenTimer.tomTimer and GardenTimer.tomTimer<6:
		$TextureRect/tomato/tomato_plant2.hide()
		$TextureRect/tomato/tomato_plant3.show()
	elif 6<GardenTimer.tomTimer and GardenTimer.tomTimer<8:
		$TextureRect/tomato/tomato_plant3.hide()
		$TextureRect/tomato/tomato_plant4.show()
		GardenTimer.growTom = false
		
	if 2<GardenTimer.onionTimer and GardenTimer.onionTimer<4:
		$TextureRect/onion/onion_plant.hide()
		$TextureRect/onion/onion_plant2.show()
	elif 4<GardenTimer.onionTimer and GardenTimer.onionTimer<6:
		$TextureRect/onion/onion_plant2.hide()
		$TextureRect/onion/onion_plant3.show()
		GardenTimer.growOnion = false
		
	if 2<GardenTimer.cucTimer and GardenTimer.cucTimer<4:
		$TextureRect/cucumber/cucumber_plant.hide()
		$TextureRect/cucumber/cucumber_plant2.show()
	elif 4<GardenTimer.cucTimer and GardenTimer.cucTimer<6:
		$TextureRect/cucumber/cucumber_plant2.hide()
		$TextureRect/cucumber/cucumber_plant3.show()
		GardenTimer.growCuc = false
		
	if 2<GardenTimer.cornTimer and GardenTimer.cornTimer<4:
		$TextureRect/corn/corn_plant.hide()
		$TextureRect/corn/corn_plant2.show()
	elif 4<GardenTimer.cornTimer and GardenTimer.cornTimer<6:
		$TextureRect/corn/corn_plant2.hide()
		$TextureRect/corn/corn_plant3.show()
		GardenTimer.growCorn = false
		
	if 2<GardenTimer.potTimer and GardenTimer.potTimer<4:
		$TextureRect/potato/potato_plant.hide()
		$TextureRect/potato/potato_plant2.show()
	elif 4<GardenTimer.potTimer and GardenTimer.potTimer<6:
		$TextureRect/potato/potato_plant2.hide()
		$TextureRect/potato/potato_plant3.show()
		GardenTimer.growPot = false
	
	if 2<GardenTimer.carrTimer and GardenTimer.carrTimer<4:
		$TextureRect/carrot/carrot_plant.hide()
		$TextureRect/carrot/carrot_plant2.show()
	elif 4<GardenTimer.carrTimer and GardenTimer.carrTimer<6:
		$TextureRect/carrot/carrot_plant2.hide()
		$TextureRect/carrot/carrot_plant3.show()
		GardenTimer.growCarr = false
	
