class Admin::ApplicationsController < ApplicationController

  before_action :authenticate_admin!, except: [:new, :create]

  def index
    @applications = Application.all
  end

  def create
    @application = Application.new(application_params)

    if @application.save
      flash[:success] = "Thank you for applying to the Web Development for Nonprofits DeCal, we will be in touch soon!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @application = Application.new
  end

  def edit
    @application = Application.find(params[:id])
  end

  def show
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.find(params[:id])

    if @application.update(application_params)
      redirect_to admin_applications_path
    else
      render 'edit'
    end
  end

  def destroy
    @application = Application.find(params[:id])
    
    @application.destroy
    redirect_to admin_applications_path
  end

  private
    def application_params
      params.require(:application).permit(:first_name, :last_name, :email, :phone_number, :year, :major, :prerequisite, :about, :why, :experience, :anything)
    end

end
