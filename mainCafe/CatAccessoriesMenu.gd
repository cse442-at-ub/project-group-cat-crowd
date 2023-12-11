extends MenuButton

var counter = 0

func _on_item_pressed(id):
	var newID = get_popup().get_item_text(id)
	var frame = Global.selectedCatFrame
	match newID:
		"Shirt":
			$"../../CanvasLayer/TextureRect/Shirt".visible = true
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = false
			match frame:
				0:
					$"../../CanvasLayer/TextureRect/Shirt".visible = true
				1:
					$"../../CanvasLayer/TextureRect/Shirt".position = Vector2(733.351,346.154)
					$"../../CanvasLayer/TextureRect/Shirt".rotation_degrees = 54.8
					$"../../CanvasLayer/TextureRect/Shirt".scale = Vector2(3.681, 5.049)
				2:
					$"../../CanvasLayer/TextureRect/Shirt".position = Vector2(816.072,376.631)
					$"../../CanvasLayer/TextureRect/Shirt".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Shirt".scale = Vector2(4.059,5.566)
				3:
					$"../../CanvasLayer/TextureRect/Shirt".position = Vector2(706.604,388.629)
					$"../../CanvasLayer/TextureRect/Shirt".rotation_degrees = 20.6
					$"../../CanvasLayer/TextureRect/Shirt".scale = Vector2(4.059,5.566)
				4:
					$"../../CanvasLayer/TextureRect/Shirt".position = Vector2(771.986,331.757)
					$"../../CanvasLayer/TextureRect/Shirt".rotation_degrees = -61.7
					$"../../CanvasLayer/TextureRect/Shirt".scale = Vector2(4.059,5.566)
				5:
					$"../../CanvasLayer/TextureRect/Shirt".position = Vector2(772.535,343.776)
					$"../../CanvasLayer/TextureRect/Shirt".rotation_degrees = 20.6
					$"../../CanvasLayer/TextureRect/Shirt".scale = Vector2(4.059,5.566)
				6:
					$"../../CanvasLayer/TextureRect/Shirt".position = Vector2(1065.597,364.142)
					$"../../CanvasLayer/TextureRect/Shirt".rotation_degrees = -68.5
					$"../../CanvasLayer/TextureRect/Shirt".scale = Vector2(4.848,6.105)
				7:
					$"../../CanvasLayer/TextureRect/Shirt".position = Vector2(795.796,394.826)
					$"../../CanvasLayer/TextureRect/Shirt".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Shirt".scale = Vector2(3.959,4.986)
				8:
					$"../../CanvasLayer/TextureRect/Shirt".position = Vector2(844.794,329.324)
					$"../../CanvasLayer/TextureRect/Shirt".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Shirt".scale = Vector2(3.058,4.986)
		"Bell":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = true
			match frame:
				0:
					$"../../CanvasLayer/TextureRect/Bell".visible = true
				1:
					$"../../CanvasLayer/TextureRect/Bell".position = Vector2(963.065,334.783)
					$"../../CanvasLayer/TextureRect/Bell".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bell".scale = Vector2(6.68,6.68)
				2:
					$"../../CanvasLayer/TextureRect/Bell".position = Vector2(834.657,298.393)
					$"../../CanvasLayer/TextureRect/Bell".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bell".scale = Vector2(6.68,6.68)
				3:
					$"../../CanvasLayer/TextureRect/Bell".position = Vector2(782.673,312.304)
					$"../../CanvasLayer/TextureRect/Bell".rotation_degrees = 6.9
					$"../../CanvasLayer/TextureRect/Bell".scale = Vector2(7.102,7.102)
				4:
					$"../../CanvasLayer/TextureRect/Bell".position = Vector2(602.98,351.481)
					$"../../CanvasLayer/TextureRect/Bell".rotation_degrees = -13.7
					$"../../CanvasLayer/TextureRect/Bell".scale = Vector2(5.312,5.312)
				5:
					$"../../CanvasLayer/TextureRect/Bell".position = Vector2(873.518,249.267)
					$"../../CanvasLayer/TextureRect/Bell".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bell".scale = Vector2(5.312,5.312)
				6:
					$"../../CanvasLayer/TextureRect/Bell".position = Vector2(792.417,480.341)
					$"../../CanvasLayer/TextureRect/Bell".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bell".scale = Vector2(5.534,5.534)
				7:
					$"../../CanvasLayer/TextureRect/Bell".position = Vector2(812.692,349.339)
					$"../../CanvasLayer/TextureRect/Bell".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bell".scale = Vector2(5.534,5.534)
				8:
					$"../../CanvasLayer/TextureRect/Bell".position = Vector2(856.622,240.17)
					$"../../CanvasLayer/TextureRect/Bell".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bell".scale = Vector2(3.562,3.562)
		"BFF":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = true
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = false
			match frame:
				0:
					$"../../CanvasLayer/TextureRect/BFF".visible = true
				1:
					$"../../CanvasLayer/TextureRect/BFF".position = Vector2(973.483,328.829)
					$"../../CanvasLayer/TextureRect/BFF".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/BFF".scale = Vector2(4.595,4.595)
				2:
					$"../../CanvasLayer/TextureRect/BFF".position = Vector2(834.657,292.935)
					$"../../CanvasLayer/TextureRect/BFF".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/BFF".scale = Vector2(5.987,5.216)
				3:
					$"../../CanvasLayer/TextureRect/BFF".position = Vector2(780.573,325.462)
					$"../../CanvasLayer/TextureRect/BFF".rotation_degrees = 6.9
					$"../../CanvasLayer/TextureRect/BFF".scale = Vector2(5.959,5.191)
				4:
					$"../../CanvasLayer/TextureRect/BFF".position = Vector2(619.113,375.483)
					$"../../CanvasLayer/TextureRect/BFF".rotation_degrees = -20.5
					$"../../CanvasLayer/TextureRect/BFF".scale = Vector2(4.75,4.75)
				5:
					$"../../CanvasLayer/TextureRect/BFF".position = Vector2(875.207,243.809)
					$"../../CanvasLayer/TextureRect/BFF".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/BFF".scale = Vector2(4.75,4.75)
				6:
					$"../../CanvasLayer/TextureRect/BFF".position = Vector2(801.106,454.906)
					$"../../CanvasLayer/TextureRect/BFF".rotation_degrees = -9.0
					$"../../CanvasLayer/TextureRect/BFF".scale = Vector2(4.75,4.75)
				7:
					$"../../CanvasLayer/TextureRect/BFF".position = Vector2(821.14,345.7)
					$"../../CanvasLayer/TextureRect/BFF".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/BFF".scale = Vector2(4.75,4.75)
				8:
					$"../../CanvasLayer/TextureRect/BFF".position = Vector2(854.993,256.573)
					$"../../CanvasLayer/TextureRect/BFF".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/BFF".scale = Vector2(3.684,3.684)
		"Bowtie":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = true
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = false
			match frame:
				0:
					$"../../CanvasLayer/TextureRect/Bowtie".visible = true
				1:
					$"../../CanvasLayer/TextureRect/Bowtie".position = Vector2(966.444,305.671)
					$"../../CanvasLayer/TextureRect/Bowtie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bowtie".scale = Vector2(3.879,3.879)
				2:
					$"../../CanvasLayer/TextureRect/Bowtie".position = Vector2(838.036,247.448)
					$"../../CanvasLayer/TextureRect/Bowtie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bowtie".scale = Vector2(3.879,3.879)
				3:
					$"../../CanvasLayer/TextureRect/Bowtie".position = Vector2(775.572,284.045)
					$"../../CanvasLayer/TextureRect/Bowtie".rotation_degrees = 13.6
					$"../../CanvasLayer/TextureRect/Bowtie".scale = Vector2(3.879,3.879)
				4:
					$"../../CanvasLayer/TextureRect/Bowtie".position = Vector2(579.529,320.227)
					$"../../CanvasLayer/TextureRect/Bowtie".rotation_degrees = -13.6
					$"../../CanvasLayer/TextureRect/Bowtie".scale = Vector2(3.879,3.879)
				5:
					$"../../CanvasLayer/TextureRect/Bowtie".position = Vector2(870.138,225.615)
					$"../../CanvasLayer/TextureRect/Bowtie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bowtie".scale = Vector2(3.879,3.879)
				6:
					$"../../CanvasLayer/TextureRect/Bowtie".position = Vector2(782.281,429.395)
					$"../../CanvasLayer/TextureRect/Bowtie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bowtie".scale = Vector2(3.879,3.879)
				7:
					$"../../CanvasLayer/TextureRect/Bowtie".position = Vector2(807.624,283.837)
					$"../../CanvasLayer/TextureRect/Bowtie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bowtie".scale = Vector2(3.879,3.879)
				8:
					$"../../CanvasLayer/TextureRect/Bowtie".position = Vector2(848.173,218.337)
					$"../../CanvasLayer/TextureRect/Bowtie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Bowtie".scale = Vector2(3.879,3.879)
		"Necklace":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = false
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = true
			$"../../CanvasLayer/TextureRect/Bell".visible = false
			match frame:
				0:
					$"../../CanvasLayer/TextureRect/Necklace".visible = true
				1:
					$"../../CanvasLayer/TextureRect/Necklace".position = Vector2(937.72,272.92)
					$"../../CanvasLayer/TextureRect/Necklace".rotation_degrees = 6.8
					$"../../CanvasLayer/TextureRect/Necklace".scale = Vector2(3.906,3.906)
				2:
					$"../../CanvasLayer/TextureRect/Necklace".position = Vector2(836.346,236.531)
					$"../../CanvasLayer/TextureRect/Necklace".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Necklace".scale = Vector2(3.906,3.906)
				3:
					$"../../CanvasLayer/TextureRect/Necklace".position = Vector2(782.28,243.809)
					$"../../CanvasLayer/TextureRect/Necklace".rotation_degrees = 13.6
					$"../../CanvasLayer/TextureRect/Necklace".scale = Vector2(3.906,3.906)
				4:
					$"../../CanvasLayer/TextureRect/Necklace".position = Vector2(596.451,290.083)
					$"../../CanvasLayer/TextureRect/Necklace".rotation_degrees = -9.8
					$"../../CanvasLayer/TextureRect/Necklace".scale = Vector2(3.405,3.906)
				5:
					$"../../CanvasLayer/TextureRect/Necklace".position = Vector2(878.586,189.225)
					$"../../CanvasLayer/TextureRect/Necklace".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Necklace".scale = Vector2(3.405,3.906)
				6:
					$"../../CanvasLayer/TextureRect/Necklace".position = Vector2(783.969,422.118)
					$"../../CanvasLayer/TextureRect/Necklace".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Necklace".scale = Vector2(3.405,3.906)
				7:
					$"../../CanvasLayer/TextureRect/Necklace".position = Vector2(803.58,283.838)
					$"../../CanvasLayer/TextureRect/Necklace".rotation_degrees = 6.8
					$"../../CanvasLayer/TextureRect/Necklace".scale = Vector2(3.025,3.906)
				8:
					$"../../CanvasLayer/TextureRect/Necklace".position = Vector2(858.311,218.337)
					$"../../CanvasLayer/TextureRect/Necklace".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Necklace".scale = Vector2(2.051,3.906)
		"Tie":
			$"../../CanvasLayer/TextureRect/Shirt".visible = false
			$"../../CanvasLayer/TextureRect/BFF".visible = false
			$"../../CanvasLayer/TextureRect/Tie".visible = true
			$"../../CanvasLayer/TextureRect/Bowtie".visible = false
			$"../../CanvasLayer/TextureRect/Necklace".visible = false
			$"../../CanvasLayer/TextureRect/Bell".visible = false
			match frame:
				0:
					$"../../CanvasLayer/TextureRect/Tie".visible = true
				1:
					$"../../CanvasLayer/TextureRect/Tie".position = Vector2(993.478,425.756)
					$"../../CanvasLayer/TextureRect/Tie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Tie".scale = Vector2(4.038,4.038)
				2:
					$"../../CanvasLayer/TextureRect/Tie".position = Vector2(838.036,323.866)
					$"../../CanvasLayer/TextureRect/Tie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Tie".scale = Vector2(4.038,4.038)
				3:
					$"../../CanvasLayer/TextureRect/Tie".position = Vector2(756.346,367.173)
					$"../../CanvasLayer/TextureRect/Tie".rotation_degrees = 13.6
					$"../../CanvasLayer/TextureRect/Tie".scale = Vector2(4.038,4.038)
				4:
					$"../../CanvasLayer/TextureRect/Tie".position = Vector2(560.944,418.479)
					$"../../CanvasLayer/TextureRect/Tie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Tie".scale = Vector2(4.038,4.038)
				5:
					$"../../CanvasLayer/TextureRect/Tie".position = Vector2(871.828,331.144)
					$"../../CanvasLayer/TextureRect/Tie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Tie".scale = Vector2(4.038,4.038)
				6:
					$"../../CanvasLayer/TextureRect/Tie".position = Vector2(787.348,480.341)
					$"../../CanvasLayer/TextureRect/Tie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Tie".scale = Vector2(2.124,2.124)
				7:
					$"../../CanvasLayer/TextureRect/Tie".position = Vector2(770.215,365.469)
					$"../../CanvasLayer/TextureRect/Tie".rotation_degrees = 7.5
					$"../../CanvasLayer/TextureRect/Tie".scale = Vector2(3.597,3.597)
				8:
					$"../../CanvasLayer/TextureRect/Tie".position = Vector2(858.311,302.032)
					$"../../CanvasLayer/TextureRect/Tie".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Tie".scale = Vector2(3.597,3.597)
		"Tophat":
			$"../../CanvasLayer/TextureRect/Tophat".visible = true
			match frame:
				0:
					$"../../CanvasLayer/TextureRect/Tophat".visible = true
				1:
					$"../../CanvasLayer/TextureRect/Tophat".position = Vector2(976.602,-10.749)
					$"../../CanvasLayer/TextureRect/Tophat".rotation_degrees = 6.8
					$"../../CanvasLayer/TextureRect/Tophat".scale = Vector2(3.487,3.487)
				2:
					$"../../CanvasLayer/TextureRect/Tophat".position = Vector2(841.415,-49.126)
					$"../../CanvasLayer/TextureRect/Tophat".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Tophat".scale = Vector2(3.487,3.487)
				3:
					$"../../CanvasLayer/TextureRect/Tophat".position = Vector2(862.014,-34.271)
					$"../../CanvasLayer/TextureRect/Tophat".rotation_degrees = 13.6
					$"../../CanvasLayer/TextureRect/Tophat".scale = Vector2(3.487,3.487)
				4:
					$"../../CanvasLayer/TextureRect/Tophat".position = Vector2(557.564,30.931)
					$"../../CanvasLayer/TextureRect/Tophat".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Tophat".scale = Vector2(3.487,3.487)
				5:
					$"../../CanvasLayer/TextureRect/Tophat".position = Vector2(881.965,-92.793)
					$"../../CanvasLayer/TextureRect/Tophat".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Tophat".scale = Vector2(3.487,3.487)
				6:
					$"../../CanvasLayer/TextureRect/Tophat".position = Vector2(799.225,23.528)
					$"../../CanvasLayer/TextureRect/Tophat".rotation_degrees = 6.8
					$"../../CanvasLayer/TextureRect/Tophat".scale = Vector2(4.254,4.254)
				7:
					$"../../CanvasLayer/TextureRect/Tophat".position = Vector2(861.307,-27.628)
					$"../../CanvasLayer/TextureRect/Tophat".rotation_degrees = 16.0
					$"../../CanvasLayer/TextureRect/Tophat".scale = Vector2(4.254,4.254)
				8:
					$"../../CanvasLayer/TextureRect/Tophat".position = Vector2(851.552,-52.765)
					$"../../CanvasLayer/TextureRect/Tophat".rotation_degrees = 0.0
					$"../../CanvasLayer/TextureRect/Tophat".scale = Vector2(3.29,3.29)

# Called when the node enters the scene tree for the first time.
func _ready():
	for item in Global.accessory_purchased.keys():
		if Global.accessory_purchased[item] == true :
			$".".get_popup().add_item(item, counter)
			counter = counter + 1
	$".".get_popup().id_pressed.connect(_on_item_pressed)
