class Travel < ApplicationRecord
  has_many :places, through: :reservations
end
