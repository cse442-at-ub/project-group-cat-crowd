extends Node

#basic vegetable count from garden and kitchen
var corn = 0
var onion = 0
var cucumber = 0
var tomato = 0
var potato = 0
var carrot = 0

#dictionaries for the veggies used in each recipe
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
