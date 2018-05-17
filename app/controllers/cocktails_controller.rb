class CocktailsController < ApplicationController
  before_action :set_cocktails, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show
    set_cocktails
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save(cocktail_params)
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_cocktails
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
