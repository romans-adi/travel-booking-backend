class Place < ApplicationRecord
  has_one :travel, dependent: :destroy
end
