require "test_helper"

class ContactUsRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_us_request = contact_us_requests(:one)
  end

  test "should get index" do
    get contact_us_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_us_request_url
    assert_response :success
  end

  test "should create contact_us_request" do
    assert_difference("ContactUsRequest.count") do
      post contact_us_requests_url, params: { contact_us_request: { email_address: @contact_us_request.email_address, message: @contact_us_request.message, name: @contact_us_request.name, phone_number: @contact_us_request.phone_number, regarding: @contact_us_request.regarding } }
    end

    assert_redirected_to contact_us_request_url(ContactUsRequest.last)
  end

  test "should show contact_us_request" do
    get contact_us_request_url(@contact_us_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_us_request_url(@contact_us_request)
    assert_response :success
  end

  test "should update contact_us_request" do
    patch contact_us_request_url(@contact_us_request), params: { contact_us_request: { email_address: @contact_us_request.email_address, message: @contact_us_request.message, name: @contact_us_request.name, phone_number: @contact_us_request.phone_number, regarding: @contact_us_request.regarding } }
    assert_redirected_to contact_us_request_url(@contact_us_request)
  end

  test "should destroy contact_us_request" do
    assert_difference("ContactUsRequest.count", -1) do
      delete contact_us_request_url(@contact_us_request)
    end

    assert_redirected_to contact_us_requests_url
  end
end
