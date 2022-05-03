require "application_system_test_case"

class LodgingsTest < ApplicationSystemTestCase
  setup do
    @lodging = lodgings(:one)
  end

  test "visiting the index" do
    visit lodgings_url
    assert_selector "h1", text: "Lodgings"
  end

  test "should create lodging" do
    visit lodgings_url
    click_on "New lodging"

    fill_in "Description", with: @lodging.description
    fill_in "Level", with: @lodging.level
    fill_in "Location", with: @lodging.location
    fill_in "Name", with: @lodging.name
    fill_in "Number of nights", with: @lodging.number_of_nights
    fill_in "Photo", with: @lodging.photo
    fill_in "Photo alt", with: @lodging.photo_alt
    fill_in "Position", with: @lodging.position
    fill_in "Trip", with: @lodging.trip_id
    click_on "Create Lodging"

    assert_text "Lodging was successfully created"
    click_on "Back"
  end

  test "should update Lodging" do
    visit lodging_url(@lodging)
    click_on "Edit this lodging", match: :first

    fill_in "Description", with: @lodging.description
    fill_in "Level", with: @lodging.level
    fill_in "Location", with: @lodging.location
    fill_in "Name", with: @lodging.name
    fill_in "Number of nights", with: @lodging.number_of_nights
    fill_in "Photo", with: @lodging.photo
    fill_in "Photo alt", with: @lodging.photo_alt
    fill_in "Position", with: @lodging.position
    fill_in "Trip", with: @lodging.trip_id
    click_on "Update Lodging"

    assert_text "Lodging was successfully updated"
    click_on "Back"
  end

  test "should destroy Lodging" do
    visit lodging_url(@lodging)
    click_on "Destroy this lodging", match: :first

    assert_text "Lodging was successfully destroyed"
  end
end
