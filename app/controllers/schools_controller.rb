class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
    @lesson = @school.lessons
    @phone = @school.phone_number
  end
end
