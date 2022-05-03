require "application_system_test_case"

class ItineraryDaysTest < ApplicationSystemTestCase
  setup do
    @itinerary_day = itinerary_days(:one)
  end

  test "visiting the index" do
    visit itinerary_days_url
    assert_selector "h1", text: "Itinerary days"
  end

  test "should create itinerary day" do
    visit itinerary_days_url
    click_on "New itinerary day"

    fill_in "Day text", with: @itinerary_day.day_text
    fill_in "Days", with: @itinerary_day.days
    fill_in "Header", with: @itinerary_day.header
    fill_in "Position", with: @itinerary_day.position
    fill_in "Trip", with: @itinerary_day.trip_id
    click_on "Create Itinerary day"

    assert_text "Itinerary day was successfully created"
    click_on "Back"
  end

  test "should update Itinerary day" do
    visit itinerary_day_url(@itinerary_day)
    click_on "Edit this itinerary day", match: :first

    fill_in "Day text", with: @itinerary_day.day_text
    fill_in "Days", with: @itinerary_day.days
    fill_in "Header", with: @itinerary_day.header
    fill_in "Position", with: @itinerary_day.position
    fill_in "Trip", with: @itinerary_day.trip_id
    click_on "Update Itinerary day"

    assert_text "Itinerary day was successfully updated"
    click_on "Back"
  end

  test "should destroy Itinerary day" do
    visit itinerary_day_url(@itinerary_day)
    click_on "Destroy this itinerary day", match: :first

    assert_text "Itinerary day was successfully destroyed"
  end
end
