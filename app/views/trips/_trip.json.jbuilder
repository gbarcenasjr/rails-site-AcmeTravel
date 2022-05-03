json.extract! trip, :id, :title, :subtitle, :defaultprice, :meet, :depart, :terrain, :intro, :key_words, :map_image, :large_map_image, :large_map_alt, :main_photo_alt, :small_map_alt, :thumbnail_photo_alt, :highlights, :main_image
json.url trip_url(trip, format: :json)
