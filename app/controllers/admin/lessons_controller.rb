class Admin::LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

  def create
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      redirect_to admin_lessons_path
    else
      render 'new'
    end
  end

  def new
    @lesson = Lesson.new
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])

    if @lesson.update(lesson_params)
      redirect_to admin_lessons_path
    else
      render 'edit'
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    
    @lesson.destroy
    redirect_to admin_lessons_path
  end

  private
    def lesson_params
      params[:week] = params[:week].to_i
      params.require(:lesson).permit(:week, :date, :topic)
    end

end
