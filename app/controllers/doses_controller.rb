class DosesController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new

  end
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail= @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def dose_params
    params.require(:dose).permit(:ingredient_id,:description)
  end

  def destroy
    @dose = Dose.find(params[:id])
    puts @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end
end
