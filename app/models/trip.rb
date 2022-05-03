class Trip < ApplicationRecord
  has_many :destinations_trips
  has_many :destinations, through: :destinations_trips

  has_many :regions, through: :destinations
  has_many :departures

  has_many :lodgings
  has_many :statements
  has_many :itinerary_days


end
