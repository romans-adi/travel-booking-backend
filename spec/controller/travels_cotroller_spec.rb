require 'rails_helper'
require 'faker'

RSpec.describe 'Api::V1::TravelsController', type: :request do
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
  def authenticate_user(user)
    post '/login', params: { user: { email: user.email, password: user.password } }
    response_body = JSON.parse(response.body)
    response_body['token']
  end

  describe 'GET /api/v1/travels' do
    it 'returns all travels' do
      get '/api/v1/travels'
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /api/v1/travels/:id' do
    let(:travel) do
      Travel.create({ name: 'Explore the Charm of Paris',
                      image: 'https://img.freepik.com/free-photo/eiffel-tower-as-famous-city-landmark-paris_649448-4835.jpg?w=360',
                      price: Faker::Number.decimal(l_digits: 2),
                      trip_duration: Faker::Number.between(from: 1, to: 15),
                      group_size: Faker::Number.between(from: 1, to: 20),
                      rating: Faker::Number.between(from: 1, to: 5),
                      travel_type: 'cultural',
                      place_id: place.id })
    end

    it 'returns a travel' do
      get "/api/v1/travels/#{travel.id}"
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /api/v1/travels' do
    context 'when valid travel parameters are provided' do
      let(:valid_params) do
        {
          travel: { name: 'Explore the Charm of Paris',
                    image: 'https://img.freepik.com/free-photo/eiffel-tower-as-famous-city-landmark-paris_649448-4835.jpg?w=360',
                    price: Faker::Number.decimal(l_digits: 2),
                    trip_duration: Faker::Number.between(from: 1, to: 15),
                    group_size: Faker::Number.between(from: 1, to: 20),
                    rating: Faker::Number.between(from: 1, to: 5),
                    travel_type: 'cultural',
                    place_id: place.id }
        }
      end

      it 'creates a new travel' do
        token = authenticate_user(user)

        expect do
          post '/api/v1/travels', params: valid_params, headers: { 'Authorization' => "Bearer #{token}" }
        end

        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'DELETE /api/v1/travels/:id' do
    let(:travel) do
      Travel.create({ name: 'Explore the Charm of Paris',
                      image: 'https://img.freepik.com/free-photo/eiffel-tower-as-famous-city-landmark-paris_649448-4835.jpg?w=360',
                      price: Faker::Number.decimal(l_digits: 2),
                      trip_duration: Faker::Number.between(from: 1, to: 15),
                      group_size: Faker::Number.between(from: 1, to: 20),
                      rating: Faker::Number.between(from: 1, to: 5),
                      travel_type: 'cultural',
                      place_id: place.id })
    end

    it 'deletes a travel' do
      token = authenticate_user(user)

      expect do
        delete "/api/v1/travels/#{travel.id}", headers: { 'Authorization' => "Bearer #{token}" }
      end

      expect(response).to have_http_status(:ok)
    end
  end
end
