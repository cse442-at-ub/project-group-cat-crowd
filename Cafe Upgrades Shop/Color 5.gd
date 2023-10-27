extends Button

func _ready():
	$".".disabled = Global.shop_items["C5"]

func _on_pressed():
	if Global.cat_coins >= 2000:
		Global.cat_coins = Global.cat_coins - 2000
		Global.shop_items["C5"] = true
		$".".disabled = Global.shop_items["C5"]
	else:
		print(Global.cat_coins)
