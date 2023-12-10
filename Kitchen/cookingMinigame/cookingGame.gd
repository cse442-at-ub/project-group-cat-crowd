extends Node2D


var list = []
var recipeNum
var recipeCurr = {}
var currIng = 0
var canCook = true

	
func _process(_delta):
	pass

func hasIng():
	for x in list:
		match x:
			"potato":
				currIng = GlobalVeggies.potato
			"onion":
				currIng = GlobalVeggies.onion
			"carrot":
				currIng = GlobalVeggies.carrot
			"corn":
				currIng = GlobalVeggies.corn
			"tomato":
				currIng = GlobalVeggies.tomato
			"cucumber":
				currIng = GlobalVeggies.cucumber
		if currIng == 0:
			canCook = false
			$ErrorBox/NotEnough.show()
			$ErrorBox.show()
			await get_tree().create_timer(1.5).timeout
			$ErrorBox.hide()

func _on_potato_soup_pressed():
	list.append("potato")
	list.append("onion")
	recipeNum = 0
	hasIng()
	if canCook == true:
		$ColorRect/Onion.show()
		$ColorRect/Potato.show()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.hide()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.potatoSoup
	list.erase("potato") 
	list.erase("onion")
	canCook = true
	
func _on_carrot_soup_pressed():
	list.append("carrot")
	list.append("onion")
	recipeNum = 1
	hasIng()
	if canCook == true:
		$ColorRect/Carrot.show()
		$ColorRect/Potato.hide()
		$ColorRect/Onion.show()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.hide()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.carrotSoup
	list.erase("carrot")
	list.erase("onion")
	canCook = true


func _on_onion_soup_pressed():
	list.append("onion")
	recipeNum = 2
	hasIng()
	if canCook:
		$ColorRect/Onion.show()
		$ColorRect/Potato.hide()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.hide()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.onionSoup
	list.erase("onion")
	canCook = true


func _on_corn_chowder_pressed():
	list.append("corn")
	list.append("potato")
	list.append("carrot")
	recipeNum = 3
	hasIng()
	if canCook:
		$ColorRect/Onion.hide()
		$ColorRect/Potato.show()
		$ColorRect/Carrot.show()
		$ColorRect/Corn.show()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.hide()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.cornChowder
	list.erase("corn")
	list.erase("potato")
	list.erase("carrot")
	canCook = true


func _on_tomato_soup_pressed():
	list.append("tomato")
	recipeNum = 4
	hasIng()
	if canCook:
		$ColorRect/Onion.hide()
		$ColorRect/Potato.hide()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.show()
		$ColorRect/Cucumber.hide()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.tomatoSoup
	list.erase("tomato")
	canCook = true


func _on_potato_salad_pressed():
	list.append("potato")
	list.append("cucumber")
	recipeNum = 5
	hasIng()
	if canCook:
		$ColorRect/Onion.hide()
		$ColorRect/Potato.show()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.show()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.potatoSalad
	list.erase("potato")
	list.erase("cucumber")
	canCook = true


func _on_cucumber_salad_pressed():
	list.append("cucumber")
	recipeNum = 6
	hasIng()
	if canCook:
		$ColorRect/Onion.hide()
		$ColorRect/Potato.hide()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.show()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.cucumberSalad
	list.erase("cucumber")
	canCook = true


func _on_house_salad_pressed():
	list.append("cucumber")
	list.append("onion")
	list.append("carrot")
	recipeNum = 7
	hasIng()
	if canCook:
		$ColorRect/Onion.show()
		$ColorRect/Potato.hide()
		$ColorRect/Carrot.show()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.show()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.regSalad
	list.erase("cucumber")
	list.erase("onion")
	list.erase("carrot")
	canCook = true


func _on_fries_pressed():
	list.append("potato")
	recipeNum = 8
	hasIng()
	if canCook:
		$ColorRect/Onion.hide()
		$ColorRect/Potato.show()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.hide()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.fries
	list.erase("potato")
	canCook = true


func _on_mashed_potatoes_pressed():
	list.append("potato")
	recipeNum = 9
	hasIng()
	if canCook:
		$ColorRect/Onion.hide()
		$ColorRect/Potato.show()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.hide()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.mashedPotatoes
	list.erase("potato")
	canCook = true


func _on_steamed_veggies_pressed():
	list.append("cucumber")
	list.append("onion")
	list.append("carrot")
	recipeNum = 10
	hasIng()
	if canCook:
		$ColorRect/Onion.show()
		$ColorRect/Potato.hide()
		$ColorRect/Carrot.show()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.show()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.veggieMix
	list.erase("cucumber")
	list.erase("onion")
	list.erase("carrot")
	canCook = true



func _on_pasta_pressed():
	list.append("tomato")
	recipeNum = 11
	hasIng()
	if canCook:
		$ColorRect/Onion.hide()
		$ColorRect/Potato.hide()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.show()
		$ColorRect/Cucumber.hide()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.pasta
	list.erase("tomato")
	canCook = true


func _on_steak_pressed():
	list.append("potato")
	list.append("onion")
	recipeNum = 12
	hasIng()
	if canCook:
		$ColorRect/Onion.show()
		$ColorRect/Potato.show()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.hide()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.steak
	list.erase("potato")
	list.erase("onion")
	canCook = true


func _on_tacos_pressed():
	list.append("tomato")
	list.append("onion")
	list.append("corn")
	recipeNum = 13
	hasIng()
	if canCook:
		$ColorRect/Onion.show()
		$ColorRect/Potato.hide()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.show()
		$ColorRect/Tomato.show()
		$ColorRect/Cucumber.hide()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.tacos
	list.erase("tomato")
	list.erase("onion")
	list.erase("corn")
	canCook = true



func _on_cucumber_sandwich_pressed():
	list.append("cucumber")
	recipeNum = 14
	hasIng()
	if canCook:
		$ColorRect/Onion.hide()
		$ColorRect/Potato.hide()
		$ColorRect/Carrot.hide()
		$ColorRect/Corn.hide()
		$ColorRect/Tomato.hide()
		$ColorRect/Cucumber.show()
		$RecipeMenu.hide()
		GlobalVeggies.currRecipe = GlobalVeggies.cucSandwich
	list.erase("cucumber")
	canCook = true



func _on_button_pressed():
	get_tree().change_scene_to_file("res://Garden Screen/garden_screen.tscn")
