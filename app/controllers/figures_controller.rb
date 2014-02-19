class FiguresController < ApplicationController
	
#	def index
#		@figures = Figure.all
#	end

	def new
		@figure = Figure.new("A")
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
