extends Button

func _ready():
	$".".disabled = Global.shop_items["Tie"]

func _on_pressed():
	if Global.cat_coins >= 1750:
		Global.cat_coins = Global.cat_coins - 1750
		Global.shop_items["Tie"] = true
		$".".disabled = Global.shop_items["Tie"]
	else:
		print(Global.cat_coins)
