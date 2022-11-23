require "test_helper"

class TestObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_object = test_objects(:one)
  end

  test "should get index" do
    get test_objects_url, as: :json
    assert_response :success
  end

  test "should create test_object" do
    assert_difference("TestObject.count") do
      post test_objects_url, params: { test_object: { name: @test_object.name, schedule_file_id: @test_object.schedule_file_id } }, as: :json
    end

    assert_response :created
  end

  test "should show test_object" do
    get test_object_url(@test_object), as: :json
    assert_response :success
  end

  test "should update test_object" do
    patch test_object_url(@test_object), params: { test_object: { name: @test_object.name, schedule_file_id: @test_object.schedule_file_id } }, as: :json
    assert_response :success
  end

  test "should destroy test_object" do
    assert_difference("TestObject.count", -1) do
      delete test_object_url(@test_object), as: :json
    end

    assert_response :no_content
  end
end
