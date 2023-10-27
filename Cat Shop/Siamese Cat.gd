extends Button

func _ready():
	$".".disabled = Global.shop_items["Siamese"]

func _on_pressed():
	if Global.cat_coins >= 500:
		Global.cat_coins = Global.cat_coins - 500
		Global.shop_items["Siamese"] = true
		$".".disabled = Global.shop_items["Siamese"]
	else:
		print(Global.cat_coins)
