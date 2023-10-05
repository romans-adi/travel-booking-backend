require 'rails_helper'
require 'faker'

RSpec.describe Travel, type: :model do
  let!(:place) do
    Place.create({
                   name: 'Amazon Rainforest',
                   description: 'Experience the lush beauty of the Amazon',
                   main_picture: 'https://files.adventure-life.com/12/45/06/iStock-CR-hikerrainforest/1300x820.webp'
                 })
  end
  subject do
    Travel.create({ name: 'Explore the Charm of Paris',
                    image: 'https://img.freepik.com/free-photo/eiffel-tower-as-famous-city-landmark-paris_649448-4835.jpg?w=360',
                    price: Faker::Number.decimal(l_digits: 2),
                    trip_duration: Faker::Number.between(from: 1, to: 15),
                    group_size: Faker::Number.between(from: 1, to: 20),
                    rating: Faker::Number.between(from: 1, to: 5),
                    travel_type: 'cultural',
                    place_id: place.id })
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:image) }
    it { should validate_length_of(:name).is_at_most(50) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:trip_duration) }
    it { should validate_presence_of(:group_size) }
    it { should validate_presence_of(:rating) }
    it { should validate_presence_of(:travel_type) }
    it { should validate_presence_of(:place_id) }
  end
end
