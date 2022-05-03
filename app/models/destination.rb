class Destination < ApplicationRecord
  has_many :destinations_trips
  has_many :trips, through: :destinations_trips
  has_many :destinations_regions
  has_many :regions, through: :destinations_regions
end
