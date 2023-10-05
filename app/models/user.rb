class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
  has_many :travels, through: :reservations
  has_many :reservations

  validates :name, presence: true
  validates :email, presence: true
  validates :role, presence: true
  validates :password, presence: true, confirmation: true

  enum role: %i[user agency]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end

  def agency?
    self.role == 'agency'
  end

  def user?
    self.role == 'user'
  end
end
