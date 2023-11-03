extends Button

func _ready():
	$".".disabled = Global.shop_items["Burmese"]

func _on_pressed():
	if Global.cat_coins >= 1750:
		Global.cat_coins = Global.cat_coins - 1750
		Global.shop_items["Burmese"] = true
		$".".disabled = Global.shop_items["Burmese"]
	else:
		print(Global.cat_coins)
