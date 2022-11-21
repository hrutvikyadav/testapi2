class Api::V1::CyclersController < ApplicationController
  before_action :set_cycler, only: %i[ show update destroy ]

  # GET /cyclers
  def index
    @cyclers = Cycler.all

    render json: @cyclers
  end

  # GET /cyclers/1
  def show
    render json: @cycler
  end

  # POST /cyclers
  def create
    @cycler = Cycler.new(cycler_params)

    if @cycler.save
      render json: @cycler, status: :created, location: @cycler
    else
      render json: @cycler.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cyclers/1
  def update
    if @cycler.update(cycler_params)
      render json: @cycler
    else
      render json: @cycler.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cyclers/1
  def destroy
    @cycler.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cycler
      @cycler = Cycler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cycler_params
      params.require(:cycler).permit(:name)
    end
end
