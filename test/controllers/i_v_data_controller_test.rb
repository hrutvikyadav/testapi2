require "test_helper"

class IVDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @i_v_datum = i_v_data(:one)
  end

  test "should get index" do
    get i_v_data_url, as: :json
    assert_response :success
  end

  test "should create i_v_datum" do
    assert_difference("IVDatum.count") do
      post i_v_data_url, params: { i_v_datum: { current_amps: @i_v_datum.current_amps, cycle_index: @i_v_datum.cycle_index, data_point: @i_v_datum.data_point, power_watts: @i_v_datum.power_watts, step_index: @i_v_datum.step_index, step_time_secs: @i_v_datum.step_time_secs, test_id: @i_v_datum.test_id, test_time_secs: @i_v_datum.test_time_secs, voltage_volts: @i_v_datum.voltage_volts } }, as: :json
    end

    assert_response :created
  end

  test "should show i_v_datum" do
    get i_v_datum_url(@i_v_datum), as: :json
    assert_response :success
  end

  test "should update i_v_datum" do
    patch i_v_datum_url(@i_v_datum), params: { i_v_datum: { current_amps: @i_v_datum.current_amps, cycle_index: @i_v_datum.cycle_index, data_point: @i_v_datum.data_point, power_watts: @i_v_datum.power_watts, step_index: @i_v_datum.step_index, step_time_secs: @i_v_datum.step_time_secs, test_id: @i_v_datum.test_id, test_time_secs: @i_v_datum.test_time_secs, voltage_volts: @i_v_datum.voltage_volts } }, as: :json
    assert_response :success
  end

  test "should destroy i_v_datum" do
    assert_difference("IVDatum.count", -1) do
      delete i_v_datum_url(@i_v_datum), as: :json
    end

    assert_response :no_content
  end
end
