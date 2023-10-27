extends Button

func _ready():
	$".".disabled = Global.shop_items["C7"]

func _on_pressed():
	if Global.cat_coins >= 2500:
		Global.cat_coins = Global.cat_coins - 2500
		Global.shop_items["C7"] = true
		$".".disabled = Global.shop_items["C7"]
	else:
		print(Global.cat_coins)
