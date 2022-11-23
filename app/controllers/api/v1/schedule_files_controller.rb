class Api::V1::ScheduleFilesController < ApplicationController
  before_action :set_schedule_file, only: %i[ show update destroy ]

  # GET /schedule_files
  def index
    @schedule_files = ScheduleFile.all

    render json: @schedule_files
  end

  # GET /schedule_files/1
  def show
    render json: @schedule_file
  end

  # POST /schedule_files
  def create
    @schedule_file = ScheduleFile.new(schedule_file_params)

    if @schedule_file.save
      render json: @schedule_file, status: :created, location: @schedule_file
    else
      render json: @schedule_file.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schedule_files/1
  def update
    if @schedule_file.update(schedule_file_params)
      render json: @schedule_file
    else
      render json: @schedule_file.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schedule_files/1
  def destroy
    @schedule_file.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_file
      @schedule_file = ScheduleFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_file_params
      params.require(:schedule_file).permit(:test_id, :name)
    end
end
