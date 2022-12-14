class IssuesController < ApplicationController

  before_action :set_strata_plan

  def index
    @issues = current_user.issues_for(@strata_plan)
  end

  def new
    @issue = current_user.issues.new(strata_plan: @strata_plan)
  end

  def create
    @issue = current_user.issues.new(issue_params)
    @issue.strata_plan = @strata_plan

    if @issue.save
      redirect_to [@strata_plan, @issue]
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @issue = current_user.issues_for(@strata_plan).find(params[:id])
    @issue.status = params[:issue][:status]
    @issue.content = params[:issue][:content]
    if @issue.save!
      flash[:notice] = "Issued updated successfully"
    else
      flash[:error] = "Issue could not be updated"
    end
  end

  def show
    @issue = current_user.issues_for(@strata_plan).find(params[:id])
    @commentable = @issue
    @comment = Comment.new
    @comment_path = issue_comment_path(@issue)
  end

  private

  def set_strata_plan
    @strata_plan ||= current_user.strata_plans.find(params[:strata_plan_id])
  end

  def issue_params
    params.require(:issue).permit(:content, :status, images: [])
  end
end
