require "application_system_test_case"

class ContactUsRequestsTest < ApplicationSystemTestCase
  setup do
    @contact_us_request = contact_us_requests(:one)
  end

  test "visiting the index" do
    visit contact_us_requests_url
    assert_selector "h1", text: "Contact us requests"
  end

  test "should create contact us request" do
    visit contact_us_requests_url
    click_on "New contact us request"

    fill_in "Email address", with: @contact_us_request.email_address
    fill_in "Message", with: @contact_us_request.message
    fill_in "Name", with: @contact_us_request.name
    fill_in "Phone number", with: @contact_us_request.phone_number
    fill_in "Regarding", with: @contact_us_request.regarding
    click_on "Create Contact us request"

    assert_text "Contact us request was successfully created"
    click_on "Back"
  end

  test "should update Contact us request" do
    visit contact_us_request_url(@contact_us_request)
    click_on "Edit this contact us request", match: :first

    fill_in "Email address", with: @contact_us_request.email_address
    fill_in "Message", with: @contact_us_request.message
    fill_in "Name", with: @contact_us_request.name
    fill_in "Phone number", with: @contact_us_request.phone_number
    fill_in "Regarding", with: @contact_us_request.regarding
    click_on "Update Contact us request"

    assert_text "Contact us request was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact us request" do
    visit contact_us_request_url(@contact_us_request)
    click_on "Destroy this contact us request", match: :first

    assert_text "Contact us request was successfully destroyed"
  end
end
