class Admin::SemestersController < ApplicationController

  before_action :authenticate_admin!

  def index
    @semesters = Semester.all
  end

  def create
    @semester = Semester.new(semester_params)

    if @semester.save
      redirect_to admin_semesters_path
    else
      render 'new'
    end
  end

  def new
    @semester = Semester.new
  end

  def edit
    @semester = Semester.find(params[:id])
  end

  def show
    @semester = Semester.find(params[:id])
  end

  def update
    @semester = Semester.find(params[:id])

    if @semester.update(semester_params)
      redirect_to admin_semesters_path
    else
      render 'edit'
    end
  end

  def destroy
    @semester = Semester.find(params[:id])
    
    @semester.destroy
    redirect_to admin_semesters_path
  end

  private
    def semester_params
      params.require(:semester).permit(:season, :year)
    end

end
