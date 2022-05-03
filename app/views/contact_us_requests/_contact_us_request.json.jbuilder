json.extract! contact_us_request, :id, :name, :regarding, :phone_number, :email_address, :message, :created_at, :updated_at
json.url contact_us_request_url(contact_us_request, format: :json)
