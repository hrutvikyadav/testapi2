require "test_helper"

class IvDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iv_datum = iv_data(:one)
  end

  test "should get index" do
    get iv_data_url, as: :json
    assert_response :success
  end

  test "should create iv_datum" do
    assert_difference("IvDatum.count") do
      post iv_data_url, params: { iv_datum: { current_amps: @iv_datum.current_amps, cycle_index: @iv_datum.cycle_index, data_point: @iv_datum.data_point, power_watts: @iv_datum.power_watts, step_index: @iv_datum.step_index, step_time_secs: @iv_datum.step_time_secs, test_id: @iv_datum.test_id, test_time_secs: @iv_datum.test_time_secs, voltage_volts: @iv_datum.voltage_volts } }, as: :json
    end

    assert_response :created
  end

  test "should show iv_datum" do
    get iv_datum_url(@iv_datum), as: :json
    assert_response :success
  end

  test "should update iv_datum" do
    patch iv_datum_url(@iv_datum), params: { iv_datum: { current_amps: @iv_datum.current_amps, cycle_index: @iv_datum.cycle_index, data_point: @iv_datum.data_point, power_watts: @iv_datum.power_watts, step_index: @iv_datum.step_index, step_time_secs: @iv_datum.step_time_secs, test_id: @iv_datum.test_id, test_time_secs: @iv_datum.test_time_secs, voltage_volts: @iv_datum.voltage_volts } }, as: :json
    assert_response :success
  end

  test "should destroy iv_datum" do
    assert_difference("IvDatum.count", -1) do
      delete iv_datum_url(@iv_datum), as: :json
    end

    assert_response :no_content
  end
end
