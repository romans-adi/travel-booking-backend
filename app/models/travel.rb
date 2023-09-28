class Travel < ApplicationRecord
  belongs_to :place
  has_many :users, through: :reservations

  validates :name, presence: true, length: { maximum: 50 }
  validates :image, presence: true
end
