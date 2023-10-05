require 'rails_helper'

RSpec.describe 'Places', type: :model do
  subject do
    Place.create({
                   name: 'Amazon Rainforest',
                   description: 'Experience the lush beauty of the Amazon',
                   main_picture: 'https://files.adventure-life.com/12/45/06/iStock-CR-hikerrainforest/1300x820.webp'
                 })
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:main_picture) }
    it { should validate_presence_of(:description) }
  end
end
