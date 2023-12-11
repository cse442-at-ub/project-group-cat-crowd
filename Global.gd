extends Node

var cat_purchased = {"Burmese": false, "Himalayan": false, "Persian": false, "Ragdoll": false, "Russian": false,
"Scottish": false, "Siamese": false, "Sphynx": false}
var accessory_purchased = {"Bell": false, "BFF": false, "Bowtie": false, "Necklace": false,
"Shirt": false, "Tie": false, "Tophat": false}
var color_purchased = {"Red": false, "Cyan": false, "Green": false, "Blue": false, "Purple": false
, "Pink": false, "Midnight": false, "Gold": false}

var cat_selected = ""
var accessory_selected = ""
var cat_coins = 50000
var topHat = false


var catsAvailable = {0: false, 1: false, 2: false, 3: false, 4: false,
5: false, 6: false, 7: false}
var selectedCatFrame = 0
var lineText = ""
