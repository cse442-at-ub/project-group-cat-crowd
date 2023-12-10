extends Button

func _ready():
	$".".disabled = Global.cat_purchased["Himalayan"]

func _on_pressed():
	if Global.cat_coins >= 1500:
		Global.cat_coins = Global.cat_coins - 1500
		Global.cat_purchased["Himalayan"] = true
		Global.catsAvailable[1] = true
		$".".disabled = Global.cat_purchased["Himalayan"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
