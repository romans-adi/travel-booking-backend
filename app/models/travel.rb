class Travel < ApplicationRecord
  has_many :users, through: :reservations
end
