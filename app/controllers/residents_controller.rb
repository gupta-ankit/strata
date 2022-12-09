class ResidentsController < ApplicationController
  def index
    @residents = @strata_plan.residents
  end

  def new
  end

  def create
    # TODO check that the current_user has permissions to
    # add a resident to the residential_unit
    residential_unit = ResidentialUnit.find(params[:residential_unit_id])
    if residential_unit.nil? # || current_user does not have permission to add resident to residential_unit
      return
    end

    @resident = ResidentManager.create_by_email(
      email: params[:email],
      residential_unit: residential_unit,
      start_date: params[:start_date],
      end_date: params[:end_date],
    )
    # create a user if it does not exist
    # create a resident with the user
  end
end
