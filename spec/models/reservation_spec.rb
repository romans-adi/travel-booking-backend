require 'rails_helper'
require 'faker'

RSpec.describe 'Api::V1::ReservationsController', type: :model do
  let!(:user) do
    User.create({ name: 'John Doe', email: 'example@example.com', password: 'password',
                  password_confirmation: 'password' })
  end

  let!(:place) do
    Place.create({
                   name: 'Amazon Rainforest',
                   description: 'Experience the lush beauty of the Amazon',
                   main_picture: 'https://files.adventure-life.com/12/45/06/iStock-CR-hikerrainforest/1300x820.webp'
                 })
  end

  let!(:travel) do
    Travel.create({ name: 'Explore the Charm of Paris',
                    image: 'https://img.freepik.com/free-photo/eiffel-tower-as-famous-city-landmark-paris_649448-4835.jpg?w=360',
                    price: Faker::Number.decimal(l_digits: 2),
                    trip_duration: Faker::Number.between(from: 1, to: 15),
                    group_size: Faker::Number.between(from: 1, to: 20),
                    rating: Faker::Number.between(from: 1, to: 5),
                    travel_type: 'cultural',
                    place_id: place.id })
  end

  subject do
    Reservation.create({ date_of_reservation: Faker::Date.between(from: '2021-01-01', to: '2021-12-31'),
                         city: Faker::Address.city,
                         user_id: user.id,
                         travel_id: travel.id })
  end

  describe 'validations' do
    it { should validate_presence_of(:date_of_reservation) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:travel_id) }
  end
end
