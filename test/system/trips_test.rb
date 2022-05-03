require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "should create trip" do
    visit trips_url
    click_on "New trip"

    fill_in "Defaultprice", with: @trip.defaultprice
    fill_in "Depart", with: @trip.depart
    fill_in "Highlights", with: @trip.highlights
    fill_in "Intro", with: @trip.intro
    fill_in "Key words", with: @trip.key_words
    fill_in "Large map alt", with: @trip.large_map_alt
    fill_in "Large map image", with: @trip.large_map_image
    fill_in "Main image", with: @trip.main_image
    fill_in "Main photo alt", with: @trip.main_photo_alt
    fill_in "Map image", with: @trip.map_image
    fill_in "Meet", with: @trip.meet
    fill_in "Small map alt", with: @trip.small_map_alt
    fill_in "Subtitle", with: @trip.subtitle
    fill_in "Terrain", with: @trip.terrain
    fill_in "Thumbnail photo alt", with: @trip.thumbnail_photo_alt
    fill_in "Title", with: @trip.title
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "should update Trip" do
    visit trip_url(@trip)
    click_on "Edit this trip", match: :first

    fill_in "Defaultprice", with: @trip.defaultprice
    fill_in "Depart", with: @trip.depart
    fill_in "Highlights", with: @trip.highlights
    fill_in "Intro", with: @trip.intro
    fill_in "Key words", with: @trip.key_words
    fill_in "Large map alt", with: @trip.large_map_alt
    fill_in "Large map image", with: @trip.large_map_image
    fill_in "Main image", with: @trip.main_image
    fill_in "Main photo alt", with: @trip.main_photo_alt
    fill_in "Map image", with: @trip.map_image
    fill_in "Meet", with: @trip.meet
    fill_in "Small map alt", with: @trip.small_map_alt
    fill_in "Subtitle", with: @trip.subtitle
    fill_in "Terrain", with: @trip.terrain
    fill_in "Thumbnail photo alt", with: @trip.thumbnail_photo_alt
    fill_in "Title", with: @trip.title
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "should destroy Trip" do
    visit trip_url(@trip)
    click_on "Destroy this trip", match: :first

    assert_text "Trip was successfully destroyed"
  end
end
