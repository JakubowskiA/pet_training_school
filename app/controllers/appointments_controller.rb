class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
    @lessons = Lesson.all
    @user = User.find(session[:user_id])
    @user_pets = @user.pets
  end

  def create
    @user = User.find(session[:user_id])
    @appointment = Appointment.create(appointment_params)
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def destroy
    @user = User.find(session[:user_id])
    @appointment = Appointment.find(params[:id]).destroy
    redirect_to user_path(@user)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:pet_id, :lesson_id)
  end
end
