extends ColorRect


func _on_soup_pressed():
	$MenuBackground/SoupRecipies.show()
	$MenuBackground/SaladRecipies.hide()
	$MenuBackground/EntreeRecipies.hide()
	

func _on_salad_pressed():
	$MenuBackground/SaladRecipies.show()
	$MenuBackground/SoupRecipies.hide()
	$MenuBackground/EntreeRecipies.hide()

func _on_entree_pressed():
	$MenuBackground/EntreeRecipies.show()
	$MenuBackground/SoupRecipies.hide()
	$MenuBackground/SaladRecipies.hide()
