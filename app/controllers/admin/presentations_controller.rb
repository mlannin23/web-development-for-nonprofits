class Admin::PresentationsController < ApplicationController

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @presentation = @lesson.presentations.create(presentation_params)
    redirect_to admin_lesson_path(@lesson)
  end

  def destroy
    @lesson = Lesson.find(params[:lesson_id])
    @presentation = @lesson.presentations.find(params[:id])
    @presentation.destroy
    redirect_to admin_lesson_path(@lesson)
  end

  private
    def presentation_params
      params.require(:presentation).permit(:title, :url)
    end

end
