extends Button

func _ready():
	$".".disabled = Global.shop_items["Sphynx"]

func _on_pressed():
	if Global.cat_coins >= 5000:
		Global.cat_coins = Global.cat_coins - 5000
		Global.shop_items["Sphynx"] = true
		$".".disabled = Global.shop_items["Sphynx"]
	else:
		print(Global.cat_coins)
