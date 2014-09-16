class Admin::SubmissionsController < ApplicationController

  before_action :authenticate_admin!, only: [:index]

  def index
    @assignment = Assignment.find(params[:assignment_id])
    @submissions = @assignment.submissions
  end

  def create
    @assignment = Assignment.find(params[:assignment_id])
    @submission = @assignment.submissions.create(submission_params)

    if @submission.save
      flash[:success] = "You have successfully submitted your assignment!"
      redirect_to assignments_path
    else
      render 'new'
    end
  end

  def new
    @assignment = Assignment.find(params[:assignment_id])
    @submission = @assignment.submissions.build
  end

  private
    def submission_params
      params.require(:submission).permit(:title)
    end

end
