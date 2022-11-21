require "test_helper"

class CyclersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cycler = cyclers(:one)
  end

  test "should get index" do
    get cyclers_url, as: :json
    assert_response :success
  end

  test "should create cycler" do
    assert_difference("Cycler.count") do
      post cyclers_url, params: { cycler: { name: @cycler.name } }, as: :json
    end

    assert_response :created
  end

  test "should show cycler" do
    get cycler_url(@cycler), as: :json
    assert_response :success
  end

  test "should update cycler" do
    patch cycler_url(@cycler), params: { cycler: { name: @cycler.name } }, as: :json
    assert_response :success
  end

  test "should destroy cycler" do
    assert_difference("Cycler.count", -1) do
      delete cycler_url(@cycler), as: :json
    end

    assert_response :no_content
  end
end
