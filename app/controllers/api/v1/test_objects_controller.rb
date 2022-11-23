class Api::V1::TestObjectsController < ApplicationController
  before_action :set_test_object, only: %i[ show update destroy ]

  # GET /test_objects
  def index
    @test_objects = TestObject.all

    render json: @test_objects
  end

  # GET /test_objects/1
  def show
    render json: @test_object
  end

  # POST /test_objects
  def create
    @test_object = TestObject.new(test_object_params)

    if @test_object.save
      render json: @test_object, status: :created, location: @test_object
    else
      render json: @test_object.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test_objects/1
  def update
    if @test_object.update(test_object_params)
      render json: @test_object
    else
      render json: @test_object.errors, status: :unprocessable_entity
    end
  end

  # DELETE /test_objects/1
  def destroy
    @test_object.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_object
      @test_object = TestObject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_object_params
      params.require(:test_object).permit(:schedule_file_id, :name)
    end
end
