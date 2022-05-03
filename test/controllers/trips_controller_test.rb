require "test_helper"

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_url
    assert_response :success
  end

  test "should create trip" do
    assert_difference("Trip.count") do
      post trips_url, params: { trip: { defaultprice: @trip.defaultprice, depart: @trip.depart, highlights: @trip.highlights, intro: @trip.intro, key_words: @trip.key_words, large_map_alt: @trip.large_map_alt, large_map_image: @trip.large_map_image, main_image: @trip.main_image, main_photo_alt: @trip.main_photo_alt, map_image: @trip.map_image, meet: @trip.meet, small_map_alt: @trip.small_map_alt, subtitle: @trip.subtitle, terrain: @trip.terrain, thumbnail_photo_alt: @trip.thumbnail_photo_alt, title: @trip.title } }
    end

    assert_redirected_to trip_url(Trip.last)
  end

  test "should show trip" do
    get trip_url(@trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_url(@trip)
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { defaultprice: @trip.defaultprice, depart: @trip.depart, highlights: @trip.highlights, intro: @trip.intro, key_words: @trip.key_words, large_map_alt: @trip.large_map_alt, large_map_image: @trip.large_map_image, main_image: @trip.main_image, main_photo_alt: @trip.main_photo_alt, map_image: @trip.map_image, meet: @trip.meet, small_map_alt: @trip.small_map_alt, subtitle: @trip.subtitle, terrain: @trip.terrain, thumbnail_photo_alt: @trip.thumbnail_photo_alt, title: @trip.title } }
    assert_redirected_to trip_url(@trip)
  end

  test "should destroy trip" do
    assert_difference("Trip.count", -1) do
      delete trip_url(@trip)
    end

    assert_redirected_to trips_url
  end
end
