class MakesController < ApplicationController
  def index
    @makes = Make.all
  end

  def show
    @make = Make.find params[:id]
  end

  def new
    @make = Make.new
  end

  def create
    @make = Make.new(make_params)
    if @make.save
      redirect_to makes_path
    else
      render :new
    end
  end

  def edit
    @make = Make.find params[:id]
  end

  def update
    @make = Make.find params[:id]
    if @make.update_attributes(make_params)
      redirect_to make_path(@make)
    else
      render :edit
    end
  end
  
  private
  
  def make_params
    params.require(:make).permit(:name)
  end
end
