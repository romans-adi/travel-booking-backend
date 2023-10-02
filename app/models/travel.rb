class Travel < ApplicationRecord
  belongs_to :place, dependent: :destroy
  has_many :users, through: :reservations
  has_many :reservations, dependent: :destroy
end