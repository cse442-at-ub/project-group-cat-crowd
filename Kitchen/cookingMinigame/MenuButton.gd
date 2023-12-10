extends Button


func _on_pressed():
	if (GlobalVeggies.corn + GlobalVeggies.carrot + GlobalVeggies.potato + GlobalVeggies.tomato + GlobalVeggies.cucumber + GlobalVeggies.onion) != 0:
		if (not $"../RecipeMenu".visible):
			$"../RecipeMenu".show()
	else:
			$"../ErrorBox/NoIngredients".show()
			$"../ErrorBox".show()
