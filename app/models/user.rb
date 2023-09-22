class User < ApplicationRecord
  has_many :travels, dependent: :destroy
  has_many :reservations

  validates :name, presence: true
end
