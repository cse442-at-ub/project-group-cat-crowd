extends Button

func _ready():
	$".".disabled = Global.shop_items["Russian"]

func _on_pressed():
	if Global.cat_coins >= 2250:
		Global.cat_coins = Global.cat_coins - 2250
		Global.shop_items["Russian"] = true
		$".".disabled = Global.shop_items["Russian"]
	else:
		print(Global.cat_coins)
