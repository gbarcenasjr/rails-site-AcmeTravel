require "test_helper"

class LodgingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lodging = lodgings(:one)
  end

  test "should get index" do
    get lodgings_url
    assert_response :success
  end

  test "should get new" do
    get new_lodging_url
    assert_response :success
  end

  test "should create lodging" do
    assert_difference("Lodging.count") do
      post lodgings_url, params: { lodging: { description: @lodging.description, level: @lodging.level, location: @lodging.location, name: @lodging.name, number_of_nights: @lodging.number_of_nights, photo: @lodging.photo, photo_alt: @lodging.photo_alt, position: @lodging.position, trip_id: @lodging.trip_id } }
    end

    assert_redirected_to lodging_url(Lodging.last)
  end

  test "should show lodging" do
    get lodging_url(@lodging)
    assert_response :success
  end

  test "should get edit" do
    get edit_lodging_url(@lodging)
    assert_response :success
  end

  test "should update lodging" do
    patch lodging_url(@lodging), params: { lodging: { description: @lodging.description, level: @lodging.level, location: @lodging.location, name: @lodging.name, number_of_nights: @lodging.number_of_nights, photo: @lodging.photo, photo_alt: @lodging.photo_alt, position: @lodging.position, trip_id: @lodging.trip_id } }
    assert_redirected_to lodging_url(@lodging)
  end

  test "should destroy lodging" do
    assert_difference("Lodging.count", -1) do
      delete lodging_url(@lodging)
    end

    assert_redirected_to lodgings_url
  end
end
