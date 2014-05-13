class MakesController < ApplicationController
	def index
		@makes = Make.all
	end
	def show
	end
	def new
		@make = Make.new
	end
	def create
		@make = Make.new(make_params)
		if @make.save
			flash[:success] = "Make created!"
			redirect_to makes_path
		else
			render :new
		end
	end
	def edit
		@make = Make.find(params[:id])
	end
	def update
		@make = Make.find(params[:id])
		if @make.update_attributes(make_params)
			flash[:success] = "Make edited!"
			redirect_to makes_path
		else
			render :edit
		end
	end
	
	private
		def make_params
			params.require(:make).permit(:name)
		end
end
