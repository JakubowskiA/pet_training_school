class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
  end

  # def search_class
  #   price_array = @lessons.price
  # end


  private

  def lesson_params
    params.require(:lesson).permit!
  end
end
