class Travel < ApplicationRecord
  belongs_to :place, dependent: :destroy
  has_many :users, through: :reservations
  has_many :reservations, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50 }
  validates :image, presence: true
end
