require "test_helper"

class ItineraryDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itinerary_day = itinerary_days(:one)
  end

  test "should get index" do
    get itinerary_days_url
    assert_response :success
  end

  test "should get new" do
    get new_itinerary_day_url
    assert_response :success
  end

  test "should create itinerary_day" do
    assert_difference("ItineraryDay.count") do
      post itinerary_days_url, params: { itinerary_day: { day_text: @itinerary_day.day_text, days: @itinerary_day.days, header: @itinerary_day.header, position: @itinerary_day.position, trip_id: @itinerary_day.trip_id } }
    end

    assert_redirected_to itinerary_day_url(ItineraryDay.last)
  end

  test "should show itinerary_day" do
    get itinerary_day_url(@itinerary_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_itinerary_day_url(@itinerary_day)
    assert_response :success
  end

  test "should update itinerary_day" do
    patch itinerary_day_url(@itinerary_day), params: { itinerary_day: { day_text: @itinerary_day.day_text, days: @itinerary_day.days, header: @itinerary_day.header, position: @itinerary_day.position, trip_id: @itinerary_day.trip_id } }
    assert_redirected_to itinerary_day_url(@itinerary_day)
  end

  test "should destroy itinerary_day" do
    assert_difference("ItineraryDay.count", -1) do
      delete itinerary_day_url(@itinerary_day)
    end

    assert_redirected_to itinerary_days_url
  end
end
