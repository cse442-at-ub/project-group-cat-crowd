extends Node2D

@onready var CornIng = $Corn

@onready var TomatoIng = $tomato

@onready var CucumberIng = $Cucumber

@onready var OnionIng = $Onion

func _process(delta):
	if CornIng.is_visible_in_tree():
		GlobalVeggies.corn = true
	else:
		GlobalVeggies.corn = false
	if TomatoIng.is_visible_in_tree():
		GlobalVeggies.tomato = true
	else:
		GlobalVeggies.tomato = false
	if CucumberIng.is_visible_in_tree():
		GlobalVeggies.cucumber = true
	else:
		GlobalVeggies.cucumber = false
	if OnionIng.is_visible_in_tree():
		GlobalVeggies.onion = true
	else:
		GlobalVeggies.onion = false
	

func _on_corn_button_pressed():
	$Corn.visible = not $Corn.visible
	pass


func _on_tom_button_pressed():
	$tomato.visible = not $tomato.visible
	pass # Replace with function body.


func _on_cuc_button_pressed():
	$Cucumber.visible = not $Cucumber.visible
	pass # Replace with function body.


func _on_onion_button_pressed():
	$Onion.visible = not $Onion.visible
	pass # Replace with function body.

func recipies():
	pass
