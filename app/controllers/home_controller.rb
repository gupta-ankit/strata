class HomeController < ApplicationController
  def index
    @plans = current_user.strata_plans
  end
end
