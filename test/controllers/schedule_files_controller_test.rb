require "test_helper"

class ScheduleFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_file = schedule_files(:one)
  end

  test "should get index" do
    get schedule_files_url, as: :json
    assert_response :success
  end

  test "should create schedule_file" do
    assert_difference("ScheduleFile.count") do
      post schedule_files_url, params: { schedule_file: { name: @schedule_file.name, test_id: @schedule_file.test_id } }, as: :json
    end

    assert_response :created
  end

  test "should show schedule_file" do
    get schedule_file_url(@schedule_file), as: :json
    assert_response :success
  end

  test "should update schedule_file" do
    patch schedule_file_url(@schedule_file), params: { schedule_file: { name: @schedule_file.name, test_id: @schedule_file.test_id } }, as: :json
    assert_response :success
  end

  test "should destroy schedule_file" do
    assert_difference("ScheduleFile.count", -1) do
      delete schedule_file_url(@schedule_file), as: :json
    end

    assert_response :no_content
  end
end
