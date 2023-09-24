class Travel < ApplicationRecord
  belongs_to :place
  has_many :users, through: :reservations
end
