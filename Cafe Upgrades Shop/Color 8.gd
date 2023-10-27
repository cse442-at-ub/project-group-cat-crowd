extends Button

func _ready():
	$".".disabled = Global.shop_items["C8"]

func _on_pressed():
	if Global.cat_coins >= 5000:
		Global.cat_coins = Global.cat_coins - 5000
		Global.shop_items["C8"] = true
		$".".disabled = Global.shop_items["C8"]
	else:
		print(Global.cat_coins)
