class HomeController < ApplicationController
  def index
    @plans = current_user.strata_plans
    if @plans.length == 1
      redirect_to @plans.first
    end
  end
end
