class DestinationsTrip < ApplicationRecord
  belongs_to :destination
  belongs_to :trip
end
