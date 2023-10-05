class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :travel
  validates :date_of_reservation, presence: true
  validates :city, presence: true
  validates :user_id, presence: true
  validates :travel_id, presence: true
end
