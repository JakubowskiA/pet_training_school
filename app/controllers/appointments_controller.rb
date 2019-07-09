class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    @lessons = Lesson.all
    @user = User.find(session[:user_id])
    @user_pets = @user.pets
  end

  def create
    @user = User.find(params[:id])
    @appointment.create(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def destroy
    @appointment = Appointment.find(params[:id]).destroy
  end

  private

  def appointment_params
    params.require(:appointment).permit(:pet_id, :lesson_id)
  end
end
