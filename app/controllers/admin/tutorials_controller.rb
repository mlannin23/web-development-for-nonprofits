class Admin::TutorialsController < ApplicationController

  before_action :authenticate_admin!

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @tutorial = @lesson.tutorials.create(params[:tutorial].permit(:title, :url))
    redirect_to admin_lesson_path(@lesson)
  end

  def destroy
    @lesson = Lesson.find(params[:lesson_id])
    @tutorial = @lesson.tutorials.find(params[:id])
    @tutorial.destroy
    redirect_to admin_lesson_path(@lesson)
  end

  private
    def tutorial_params
      params.require(:tutorial).permit(:title, :url)
    end
    
end
