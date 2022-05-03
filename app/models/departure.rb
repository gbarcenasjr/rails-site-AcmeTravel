class Departure < ApplicationRecord
  default_scope { order('departure_date') }
  belongs_to :trip
end
