class Figure < ActiveRecord::Base
	
	FIGURE =
	
	{ 
	
	A: "AppleJack", B: "Big MacIntosh", C: "Fluttershy II", D: "Pinkie Pie",
	
	E: "Rainbow Dash", F: "Rarity", G: "Amethyst Star II", H: "ShoeShine II",
	
	I: "Noteworthy", K: "Sea Swirl", L: "Berryshine II", M: "Princess Cadance II",
	
	N: "Peachy Sweet II", O: "Lily Valley", P: "Nurse Snowheart", R: "Sprinkle Medley",
	
	S: "Tropical Storm", T: "Mr. Carrot Cake", U: "Green Jewel", V: "Lavender Fritter",
	
	W: "Apple Honey", X: "Honey Rays", Y: "Prism Glider", Z: "Grape Delight"
	
	}

	LETTER =

	{

	AppleJack: "A", Big_MacIntosh: "B", Fluttershy_II: "C", Pinkie_Pie: "D",
	
	Rainbow_Dash: "E", Rarity: "F", Amethyst_Star_II: "G", ShoeShine_II: "H",
	
	Noteworthy: "I", Sea_Swirl: "K", Berryshine_II: "L", Princess_Cadance_II: "M",
	
	Peachy_Sweet_II: "N", Lily_Valley: "O", Nurse_Snowheart: "P", Sprinkle_Medley: "R",
	
	Tropical_Storm: "S", Mr__Carrot_Cake: "T", Green_Jewel: "U", Lavender_Fritter: "V",
	
	Apple_Honey: "W", Honey_Rays: "X", Prism_Glider: "Y", Grape_Delight: "Z"
	
	}

	def initialize(bag_index)
		@letter = bag_index.to_s
#		puts "initialize " + @letter
	end

	def figure
		figure = FIGURE[@letter.to_sym].to_s
	end




end
