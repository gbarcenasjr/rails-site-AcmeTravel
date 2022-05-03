json.extract! departure, :id, :trip_id, :departure_date, :return_date, :price, :difficulty_level, :created_at, :updated_at
json.url departure_url(departure, format: :json)
