require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home_page" do
    get pages_home_page_url
    assert_response :success
  end

  test "should get why_travel_with_us" do
    get pages_why_travel_with_us_url
    assert_response :success
  end

  test "should get privacy_statement" do
    get pages_privacy_statement_url
    assert_response :success
  end
end
