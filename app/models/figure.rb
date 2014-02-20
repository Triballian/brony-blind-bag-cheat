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

	FIGURE_WAVE10 =

	{ 
	
	A: "AppleJack", B: "Big MacIntosh", C: "Fluttershy", D: "Pinkie Pie",
	
	E: "Rainbow Dash", F: "Rarity", G: "Amethyst Star", H: "ShoeShine",
	
	I: "Noteworthy", K: "Sea Swirl", L: "Berryshine", M: "Princess Cadance",
	
	N: "Peachy Sweet", O: "Lily Valley", P: "Nurse Snowheart", R: "Sprinkle Medley",
	
	S: "Tropical Storm", T: "Mr. Carrot Cake", U: "Green Jewel", V: "Lavender Fritter",
	
	W: "Apple Honey", X: "Honey Rays", Y: "Prism Glider", Z: "Grape Delight"
	
	}

	LETTER_WAVE10 =

	{
	AppleJack: "A", Big_MacIntosh: "B", Fluttershy: "C", Pinkie_Pie: "D",
	
	Rainbow_Dash: "E", Rarity: "F", Amethyst_Star: "G", ShoeShine: "H",
	
	Noteworthy: "I", Sea_Swirl: "K", Berryshine: "L", Princess_Cadance: "M",
	
	Peachy_Sweet: "N", Lily_Valley: "O", Nurse_Snowheart: "P", Sprinkle_Medley: "R",
	
	Tropical_Storm: "S", Mr__Carrot_Cake: "T", Green_Jewel: "U", Lavender_Fritter: "V",
	
	Apple_Honey: "W", Honey_Rays: "X", Prism_Glider: "Y", Grape_Delight: "Z"
	}

	def initialize(letter_index, figure_index, letter10_index, figure10_index)
		@letter = letter_index.to_s
		@figure = figure_index.to_s
		@letter10 = letter10_index.to_s
		@figure10 = figure10_index.to_s
#		puts "initialize " + @letter
	end

	def figure
		figure = FIGURE[@letter.to_sym].to_s
	end

	def letter_selected
		letter_selected = @letter.to_s

	end

	def letter
		letter = LETTER[@figure.to_sym].to_s
	end

	def figure_selected
		if !@figure.empty?
		figure_selected = FIGURE[LETTER[@figure.to_sym].to_sym].to_s
	 end
	end

	def figure10
		figure10 = FIGURE_WAVE10[@letter10.to_sym].to_s
	end

	def letter10_selected
		letter10_selected = @letter10.to_s

	end
	

	def letter10
		letter10 = LETTER_WAVE10[@figure10.to_sym].to_s
	end

	def figure10_selected
		if !@figure10.empty?
		figure10_selected = FIGURE_WAVE10[LETTER_WAVE10[@figure10.to_sym].to_sym].to_s
	 end
	end



end
