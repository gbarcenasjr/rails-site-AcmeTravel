class Region < ApplicationRecord
  has_many :destinations_regions
  has_many :destinations, through: :destinations_regions
  has_many :trips, through: :destinations
end
