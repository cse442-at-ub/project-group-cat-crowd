extends Node

@onready var veggie = get_node("/root/GlobalVeggies")

##var corn = GlobalVeggies.corn
##var onion = GlobalVeggies.onion
##var cucumber = GlobalVeggies.cucumber
##var tomato = GlobalVeggies.tomato
##var potato = GlobalVeggies.potato
##var carrot = GlobalVeggies.carrot"""

var potatoSoup = {"potato": potato, "onion": onion}
var carrotSoup = {"carrot": carrot, "onion": onion}
var onionSoup = {"onion": onion}
var cornChowder = {"corn": corn, "potato": potato, "carrot": carrot}
var tomatoSoup = {"tomato": tomato}

var potatoSalad = {"potato": potato, "cucumber": cucumber}
var cucumberSalad = {"cucumber": cucumber}
var regSalad = {"tomato": tomato, "cucumber": cucumber, "onion": onion}

var mashedPotatoes = {"potato":potato}
var fries = {"potato":potato}
var veggieMix = {"carrot": carrot, "cucumber": cucumber, "onion": onion}

var pasta = {"tomato": tomato, "onion": onion}
var steak = {"potato": potato, "onion": onion}
var tacos = {"tomato": tomato, "onion": onion, "corn": corn}
var cucSandwich = {"cucumber": cucumber}

var recipies = [potatoSoup, carrotSoup, onionSoup, cornChowder, tomatoSoup, 
				potatoSalad, cucumberSalad, regSalad, mashedPotatoes, fries, veggieMix, 
				pasta, steak, tacos, cucSandwich]
