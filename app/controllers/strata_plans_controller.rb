class StrataPlansController < ApplicationController
  before_action :set_strata_plan, only: %i[ show edit update destroy ]

  # GET /strata_plans/1 or /strata_plans/1.json
  def show
  end

  # GET /strata_plans/new
  def new
    # @strata_plan = StrataPlan.new
  end

  # GET /strata_plans/1/edit
  def edit
  end

  # POST /strata_plans or /strata_plans.json
  def create
    # @strata_plan = StrataPlan.new(strata_plan_params)
    #
    # respond_to do |format|
    #   if @strata_plan.save
    #     format.html { redirect_to strata_plan_url(@strata_plan), notice: "Strata plan was successfully created." }
    #     format.json { render :show, status: :created, location: @strata_plan }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @strata_plan.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /strata_plans/1 or /strata_plans/1.json
  def update
    # respond_to do |format|
    #   if @strata_plan.update(strata_plan_params)
    #     format.html { redirect_to strata_plan_url(@strata_plan), notice: "Strata plan was successfully updated." }
    #     format.json { render :show, status: :ok, location: @strata_plan }
    #   else
    #     format.html { render :edit, status: :unprocessable_entity }
    #     format.json { render json: @strata_plan.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /strata_plans/1 or /strata_plans/1.json
  def destroy
    # @strata_plan.destroy
    #
    # respond_to do |format|
    #   format.html { redirect_to strata_plans_url, notice: "Strata plan was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strata_plan
      @strata_plan = current_user.strata_plans.find(params[:id])
      @chat_rooms = @strata_plan.chat_rooms
    end

    # Only allow a list of trusted parameters through.
    def strata_plan_params
      params.fetch(:strata_plan, {})
    end
end
