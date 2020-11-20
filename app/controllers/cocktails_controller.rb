class CocktailsController < ApplicationController
  def index
    @new_cocktail = Cocktail.new
    @cocktails = Cocktail.all
    @query = ""
  end
  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @doses = Dose.where("cocktail_id = ?",params[:id])
  end

  def search
    @query = params[:search].downcase
    @new_cocktail = Cocktail.new
    @cocktails = Cocktail.where("lower(name) like ?", "%#{@query }%")
    render :index
  end

  def new
    @cocktail = Cocktail.new
  end
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end

  end


  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
