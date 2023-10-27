extends Button

func _ready():
	$".".disabled = Global.shop_items["Ragdoll"]

func _on_pressed():
	if Global.cat_coins >= 2000:
		Global.cat_coins = Global.cat_coins - 2000
		Global.shop_items["Ragdoll"] = true
		$".".disabled = Global.shop_items["Ragdoll"]
	else:
		print(Global.cat_coins)
