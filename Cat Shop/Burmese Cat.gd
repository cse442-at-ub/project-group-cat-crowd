extends Button

func _ready():
	$".".disabled = Global.shop_items["Burmese"]

func _on_pressed():
	if Global.cat_coins >= 1750:
		Global.cat_coins = Global.cat_coins - 1750
		Global.shop_items["Burmese"] = true
		$".".disabled = Global.shop_items["Burmese"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
