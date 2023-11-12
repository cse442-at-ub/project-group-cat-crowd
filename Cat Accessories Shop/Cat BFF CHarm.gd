extends Button

func _ready():
	$".".disabled = Global.shop_items["BFF"]

func _on_pressed():
	if Global.cat_coins >= 1000:
		Global.cat_coins = Global.cat_coins - 1000
		Global.shop_items["BFF"] = true
		$".".disabled = Global.shop_items["BFF"]
	else:
		$"../../CurrencyPopup".visible = true
		await get_tree().create_timer(3.0).timeout
		$"../../CurrencyPopup".visible = false
