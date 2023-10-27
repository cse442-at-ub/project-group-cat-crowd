extends Button

func _ready():
	$".".disabled = Global.shop_items["C2"]

func _on_pressed():
	if Global.cat_coins >= 1000:
		Global.cat_coins = Global.cat_coins - 1000
		Global.shop_items["C2"] = true
		$".".disabled = Global.shop_items["C2"]
	else:
		print(Global.cat_coins)
