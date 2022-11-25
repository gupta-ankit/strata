class ResidentsController < ApplicationController
  def index
    @residents = @strata_plan.residents
  end

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.nil?
      @user = User.new(email: params[:email])
      if @user.save
        render :new, status: :unprocessable_entity
      else
        redirect_to strata_plan_residents_url(@strata_plan)
      end
    end
  end
end
