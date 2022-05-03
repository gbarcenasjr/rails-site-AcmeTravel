require "test_helper"

class DeparturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @departure = departures(:one)
  end

  test "should get index" do
    get departures_url
    assert_response :success
  end

  test "should get new" do
    get new_departure_url
    assert_response :success
  end

  test "should create departure" do
    assert_difference("Departure.count") do
      post departures_url, params: { departure: { departure_date: @departure.departure_date, difficulty_level: @departure.difficulty_level, price: @departure.price, return_date: @departure.return_date } }
    end

    assert_redirected_to departure_url(Departure.last)
  end

  test "should show departure" do
    get departure_url(@departure)
    assert_response :success
  end

  test "should get edit" do
    get edit_departure_url(@departure)
    assert_response :success
  end

  test "should update departure" do
    patch departure_url(@departure), params: { departure: { departure_date: @departure.departure_date, difficulty_level: @departure.difficulty_level, price: @departure.price, return_date: @departure.return_date } }
    assert_redirected_to departure_url(@departure)
  end

  test "should destroy departure" do
    assert_difference("Departure.count", -1) do
      delete departure_url(@departure)
    end

    assert_redirected_to departures_url
  end
end
