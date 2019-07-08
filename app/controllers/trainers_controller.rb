class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def edit 
    @trainer = Trainer.find(params[:id])
  end

  def update
    @trainer = Trainer.find(params[:id])
    @trainer.update(trainer_params)
    redirect_to trainer_path(@trainer)
  end

  def trainer_params
    params.require(:tainer).permit(:name, :bio)
  end


end
