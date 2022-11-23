class Api::V1::IvDataController < ApplicationController
  before_action :set_iv_datum, only: %i[ show update destroy ]

  # GET /iv_data
  def index
    @iv_data = IvDatum.all

    render json: @iv_data
  end

  # GET /iv_data/1
  def show
    render json: @iv_datum
  end

  # POST /iv_data
  def create
    @iv_datum = IvDatum.new(iv_datum_params)

    if @iv_datum.save
      render json: @iv_datum, status: :created, location: @iv_datum
    else
      render json: @iv_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /iv_data/1
  def update
    if @iv_datum.update(iv_datum_params)
      render json: @iv_datum
    else
      render json: @iv_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /iv_data/1
  def destroy
    @iv_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iv_datum
      @iv_datum = IvDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def iv_datum_params
      params.require(:iv_datum).permit(:test_id, :data_point, :test_time_secs, :step_time_secs, :cycle_index, :step_index, :current_amps, :voltage_volts, :power_watts)
    end
end
