class ResidentialUnitsController < ApplicationController
  def index
    @residential_units = @strata_plan.residential_units
  end

  def new
    @residential_unit = @strata_plan.residential_units.new
  end

  def create
    @residential_unit = ResidentialUnit.new(unit_params.merge(strata_plan: @strata_plan))
    if @residential_unit.save
      redirect_to strata_plan_residential_units_path(@strata_plan)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def unit_params
    params.require(:residential_unit).permit(:name)
  end
end
