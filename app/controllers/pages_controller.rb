class PagesController < ApplicationController

  before_filter :authenticate_admin!, only: [:admin]

  def home
  end

  def schedule
    @lessons = Lesson.order(:week)
  end

  def assignments
  end

  def syllabus
  end

  def admin
    @users = User.all
  end

end
