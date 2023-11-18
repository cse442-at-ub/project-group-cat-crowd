extends Node2D

@onready var CornIng = $Corn

@onready var TomatoIng = $tomato

@onready var CucumberIng = $Cucumber

@onready var OnionIng = $Onion

func _ready():
	print(GlobalVeggies.corn)

func _process(delta):
	pass

func _on_corn_button_pressed():
	if GlobalVeggies.corn > 0:
		$Corn.visible = not $Corn.visible
	pass


func _on_tom_button_pressed():
	if GlobalVeggies.tomato > 0:
		$tomato.visible = not $tomato.visible
	pass # Replace with function body.


func _on_cuc_button_pressed():
	if GlobalVeggies.cucumber > 0:
		$Cucumber.visible = not $Cucumber.visible
	pass # Replace with function body.


func _on_onion_button_pressed():
	if GlobalVeggies.onion :
		$Onion.visible = not $Onion.visible
	pass # Replace with function body.

