extends Button

func _ready():
	$".".disabled = Global.shop_items["Persian"]

func _on_pressed():
	if Global.cat_coins >= 1000:
		Global.cat_coins = Global.cat_coins - 1000
		Global.shop_items["Persian"] = true
		$".".disabled = Global.shop_items["Persian"]
	else:
		print(Global.cat_coins)
