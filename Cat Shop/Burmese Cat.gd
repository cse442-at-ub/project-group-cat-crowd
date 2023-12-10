extends Button

func _ready():
	$".".disabled = Global.cat_purchased["Burmese"]

func _on_pressed():
	if Global.cat_coins >= 1750:
		Global.cat_coins = Global.cat_coins - 1750
		Global.cat_purchased["Burmese"] = true
		Global.catsAvailable[0] = true
		$".".disabled = Global.cat_purchased["Burmese"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
