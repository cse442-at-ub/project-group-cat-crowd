extends Button

func _ready():
	$".".disabled = Global.shop_items["Tophat"]

func _on_pressed():
	if Global.cat_coins >= 1500:
		Global.cat_coins = Global.cat_coins - 1500
		Global.shop_items["Tophat"] = true
		$".".disabled = Global.shop_items["Tophat"]
	else:
		print(Global.cat_coins)
