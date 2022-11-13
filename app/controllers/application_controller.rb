class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_navbar_vars

  private
  def set_navbar_vars
    unless params[:strata_plan_id].nil? || current_user.nil?
      @strata_plan = current_user.strata_plans.find(params[:strata_plan_id])
      @chat_rooms = @strata_plan.chat_rooms
    end
  end
end
