class IVDataController < ApplicationController
  before_action :set_i_v_datum, only: %i[ show update destroy ]

  # GET /i_v_data
  def index
    @i_v_data = IVDatum.all

    render json: @i_v_data
  end

  # GET /i_v_data/1
  def show
    render json: @i_v_datum
  end

  # POST /i_v_data
  def create
    @i_v_datum = IVDatum.new(i_v_datum_params)

    if @i_v_datum.save
      render json: @i_v_datum, status: :created, location: @i_v_datum
    else
      render json: @i_v_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /i_v_data/1
  def update
    if @i_v_datum.update(i_v_datum_params)
      render json: @i_v_datum
    else
      render json: @i_v_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /i_v_data/1
  def destroy
    @i_v_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_i_v_datum
      @i_v_datum = IVDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def i_v_datum_params
      params.require(:i_v_datum).permit(:test_id, :data_point, :test_time_secs, :step_time_secs, :cycle_index, :step_index, :current_amps, :voltage_volts, :power_watts)
    end
end
