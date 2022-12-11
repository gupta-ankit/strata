class ResidentsController < ApplicationController
  def index
    @residents = @strata_plan.residents
  end

  def new
    @resident = Resident.new
    @residential_units = @strata_plan.residential_units
  end

  def create
    @residential_units = @strata_plan.residential_units
    # TODO check that the current_user has permissions to
    # add a resident to the residential_unit
    residential_unit = ResidentialUnit.find(params[:resident][:residential_unit_id])
    if residential_unit.nil? # || current_user does not have permission to add resident to residential_unit
      return
    end

    @resident = ResidentManager.create_by_email(
      email: params[:resident][:email],
      residential_unit: residential_unit,
    )

    if @resident.persisted?
      redirect_to strata_plan_residents_path(@strata_plan)
    else
      render :new, status: :unprocessable_entity
    end
    # create a user if it does not exist
    # create a resident with the user
  end
end
