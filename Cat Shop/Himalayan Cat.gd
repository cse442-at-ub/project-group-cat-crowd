extends Button

func _ready():
	$".".disabled = Global.shop_items["Himalayan"]

func _on_pressed():
	if Global.cat_coins >= 1500:
		Global.cat_coins = Global.cat_coins - 1500
		Global.shop_items["Himalayan"] = true
		$".".disabled = Global.shop_items["Himalayan"]
	else:
		print(Global.cat_coins)
