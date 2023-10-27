extends Button

func _ready():
	$".".disabled = Global.shop_items["C6"]

func _on_pressed():
	if Global.cat_coins >= 2250:
		Global.cat_coins = Global.cat_coins - 2250
		Global.shop_items["C6"] = true
		$".".disabled = Global.shop_items["C6"]
	else:
		print(Global.cat_coins)
