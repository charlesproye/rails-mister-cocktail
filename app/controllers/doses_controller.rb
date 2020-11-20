class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(params_doses)
    @ingredient = Ingredient.find(params_doses[:ingredient_id])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    if @dose.save
      @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.destroy

    redirect_to cocktail_path(@cocktail)
  end

  private

  def params_doses
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
