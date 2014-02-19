class Figure < ActiveRecord::Base
	
	FIGURE =
	
	{ 
	
	A: "AppleJack", B: "Big MacIntosh", C: "Fluttershy II", D: "Pinkie Pie",
	
	E: "Rainbow Dash", F: "Rarity", G: "Amethyst STar II", H: "ShoeShine II",
	
	I: "Noteworthy", K: "Sea Swirl", L: "Berryshine II", M: "Princess Cadance II",
	
	N: "Peachy Sweet II", O: "Lily Valley", P: "Nurse Snowheart", R: "Sprinkle Medley",
	
	S: "Tropical Storm", T: "Mr. Carrot Cake", U: "Green Jewel", V: "Lavender Fritter",
	
	W: "Apple Honey", X: "Honey Rays", Y: "Prism Glider", Z: "Grape Delight"
	
	}

	def initialize(letter)
		@letter = letter.to_s
#		puts "initialize " + @letter
	end

	def figure
		figure = FIGURE[@letter.to_sym].to_s
	end




end
