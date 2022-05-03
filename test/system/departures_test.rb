require "application_system_test_case"

class DeparturesTest < ApplicationSystemTestCase
  setup do
    @departure = departures(:one)
  end

  test "visiting the index" do
    visit departures_url
    assert_selector "h1", text: "Departures"
  end

  test "should create departure" do
    visit departures_url
    click_on "New departure"

    fill_in "Departure date", with: @departure.departure_date
    fill_in "Difficulty level", with: @departure.difficulty_level
    fill_in "Price", with: @departure.price
    fill_in "Return date", with: @departure.return_date
    click_on "Create Departure"

    assert_text "Departure was successfully created"
    click_on "Back"
  end

  test "should update Departure" do
    visit departure_url(@departure)
    click_on "Edit this departure", match: :first

    fill_in "Departure date", with: @departure.departure_date
    fill_in "Difficulty level", with: @departure.difficulty_level
    fill_in "Price", with: @departure.price
    fill_in "Return date", with: @departure.return_date
    click_on "Update Departure"

    assert_text "Departure was successfully updated"
    click_on "Back"
  end

  test "should destroy Departure" do
    visit departure_url(@departure)
    click_on "Destroy this departure", match: :first

    assert_text "Departure was successfully destroyed"
  end
end
