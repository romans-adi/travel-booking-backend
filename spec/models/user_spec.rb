require 'rails_helper'

RSpec.describe 'user', type: :model do
  subject do
    User.create({
                  name: 'John Doe',
                  email: 'example@example.com',
                  password: 'password',
                  password_confirmation: 'password'
                })
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:role) }
  end
end
