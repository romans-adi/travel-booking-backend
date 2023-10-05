require 'rails_helper'

RSpec.describe 'Api::V1::PlacesController', type: :request do
  let!(:user) do
    User.create(
      name: 'John Doe',
      email: 'example@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
  end

  def authenticate_user(user)
    post '/login', params: { user: { email: user.email, password: user.password } }
    JSON.parse(response.body)['token']
  end

  describe 'GET /api/v1/places' do
    it 'returns all places' do
      get '/api/v1/places'
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET /api/v1/places/:id' do
    let(:place) do
      Place.create(
        name: 'Amazon Rainforest',
        description: 'Experience the lush beauty of the Amazon',
        main_picture: 'https://files.adventure-life.com/12/45/06/iStock-CR-hikerrainforest/1300x820.webp'
      )
    end

    it 'returns a place' do
      get "/api/v1/places/#{place.id}"
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /api/v1/places' do
    context 'when valid place parameters are provided' do
      let(:valid_params) do
        {
          place: {
            name: 'Amazon Rainforest',
            description: 'Experience the lush beauty of the Amazon',
            main_picture: 'https://files.adventure-life.com/12/45/06/iStock-CR-hikerrainforest/1300x820.webp'
          }
        }
      end

      it 'creates a new place' do
        token = authenticate_user(user)

        expect do
          post '/api/v1/places', params: valid_params, headers: { 'Authorization' => "Bearer #{token}" }
        end

        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'DELETE /api/v1/places/:id' do
    let(:place) do
      Place.create(
        name: 'Amazon Rainforest',
        description: 'Experience the lush beauty of the Amazon',
        main_picture: 'https://files.adventure-life.com/12/45/06/iStock-CR-hikerrainforest/1300x820.webp'
      )
    end

    it 'deletes a place' do
      token = authenticate_user(user)

      expect do
        delete "/api/v1/places/#{place.id}", headers: { 'Authorization' => "Bearer #{token}" }
      end

      expect(response).to have_http_status(:ok)
    end
  end
end
