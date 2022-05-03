json.extract! lodging, :id, :trip_id, :position, :name, :location, :level, :number_of_nights, :description, :photo, :photo_alt, :created_at, :updated_at
json.url lodging_url(lodging, format: :json)
