class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end
  
  def show
    @cat = Cat.find(params[:id])
    render :show
  end
  
  def new
    @cat = Cat.new
    render :new
  end
  
  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end
  
  def create
    @cat = Cat.create(cat_param)
    if @cat.save
        redirect_to cat_url(@cat)
    else
      render json: @cat.errors.full_messages, status: 405
    end
  end
  
  def update
    # fail
    @cat = Cat.find(params[:id])
    if @cat.update(cat_param)
      redirect_to cat_url(@cat)
    else
      render json: @cat.errors.full_messages, status: 405
    end
  end 
  
  private
  def cat_param
    params.require(:cat).permit(:name, :color, :birth_date, :sex, :description)
  end
end