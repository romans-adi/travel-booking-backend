class Place < ApplicationRecord
  has_one :travel, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true
  validates :main_picture, presence: true
end
