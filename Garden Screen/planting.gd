extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if PlantGame.tomato:
		$tomato_plant.show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
