class FiguresController < ApplicationController
	
	def new
		@figure = Figure.new(params[:letter_id], params[:figure_id])

		
	end

	def create
		@figure = Figure.new(params[:letter_id], parmas[:figure_id])
		if @figure.valid?
			@figure = Figure.new("A", "AppleJack")
			redirect_to root_path
		else
		render :new
	end

	end

#	def create
		

#		@figure = Figure.new(params[:sample_form])
#		if @figure.save
#			redirect_to figures_path
#		end
#	end

#	def destroy
#	@figure = Figure.find_by_id(params[:id])
#	if @figure.destroy
#		redirect_to figures_path
#	end
#end


end
