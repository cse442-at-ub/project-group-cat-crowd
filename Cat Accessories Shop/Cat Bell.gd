extends Button

func _ready():
	$".".disabled = Global.shop_items["Bell"]

func _on_pressed():
	if Global.cat_coins >= 2500:
		Global.cat_coins = Global.cat_coins - 2500
		Global.shop_items["Bell"] = true
		$".".disabled = Global.shop_items["Bell"]
	else:
		print(Global.cat_coins)
