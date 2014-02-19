class FiguresController < ApplicationController
	
	def new
		@figure = Figure.new(params[:letter_id])
		
	end

	def create
		@figure = Figure.new(params[:letter_id])
		if @figure.valid?
			@figure = Figure.new("A")
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
