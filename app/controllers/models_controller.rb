class ModelsController < ApplicationController
  def index
    @models = Model.all
  end

  def show
    @model = Model.find params[:id]
  end

  def new
    @model = Model.new
  end

  def create
    @model = Model.new(model_params)
    if @model.save
      redirect_to models_path
    else
      render :new
    end
  end

  def edit
    @model = Model.find params[:id]
  end

  def update
    @model = Model.find params[:id]
    if @model.update_attributes(model_params)
      redirect_to model_path(@model)
    else
      render :edit
    end
  end
  
  private
  
  def model_params
    params.require(:model).permit(:name)
  end
end
