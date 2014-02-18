class FiguresController < ApplicationController
	
	def index
		@figures = Figure.all
	end

	def new
		@figure = Figure.new
	end

	def create
		@figure = Figure.new(params[:figure])
		if @figure.save
			redirect_to figures_path
		end
	end

	def destroy
	@figure = Figure.find_by_id(params[:id])
	if @figure.destroy
		redirect_to figures_path
	end
end

end
