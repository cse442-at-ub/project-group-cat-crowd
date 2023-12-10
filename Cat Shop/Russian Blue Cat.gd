extends Button

func _ready():
	$".".disabled = Global.cat_purchased["Russian"]

func _on_pressed():
	if Global.cat_coins >= 2250:
		Global.cat_coins = Global.cat_coins - 2250
		Global.cat_purchased["Russian"] = true
		Global.catsAvailable[4] = true
		$".".disabled = Global.cat_purchased["Russian"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
