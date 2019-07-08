class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.owner_id = session[:user].id
    @pet.save
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def destroy
    @pet = Pet.find(params[:id]).destroy
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :owner_id, :age, :gender)
  end
end
