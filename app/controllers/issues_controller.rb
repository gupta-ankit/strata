class IssuesController < ApplicationController

  def index
    @strata_plan = current_user.strata_plans.find(params[:strata_plan_id])
    @issues = current_user.issues_for(@strata_plan)
  end

  def show
    @strata_plan = current_user.strata_plans.find(params[:strata_plan_id])
    @issue = current_user.issues_for(@strata_plan).find(params[:id])
  end
end
