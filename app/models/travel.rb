class Travel < ApplicationRecord
  belongs_to :place, dependent: :destroy
  has_many :users, through: :reservations
  has_many :reservations, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50 }
  validates :image, presence: true
  validates :price, presence: true
  validates :trip_duration, presence: true
  validates :group_size, presence: true
  validates :rating, presence: true
  validates :travel_type, presence: true
  validates :place_id, presence: true
end
