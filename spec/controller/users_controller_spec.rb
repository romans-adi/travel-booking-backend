require 'rails_helper'

RSpec.describe 'Api::V1::UsersController', type: :request do
  describe 'POST /api/v1/users' do
    context 'when valid user parameters are provided' do
      let(:valid_params) do
        {
          user: {
            name: 'Jane Doe',
            email: 'example@example.com',
            password: 'password',
            password_confirmation: 'password'
          }
        }
      end

      it 'creates a new user' do
        expect do
          post '/api/v1/users', params: valid_params
        end.to change(User, :count).by(1)

        expect(response).to have_http_status(:ok)
        expect(JSON.parse(response.body)).to include('success' => true)
      end
    end

    context 'when invalid user parameters are provided' do
      let(:invalid_params) do
        {
          user: {
            name: 'Jane Doe',
            email: 'example@example.com',
            password: 'password',
            password_confirmation: 'wrong_password'
          }
        }
      end

      it 'does not create a new user' do
        expect do
          post '/signup', params: invalid_params
        end.not_to change(User, :count)

        expect(response).to have_http_status(:unprocessable_entity)
        expect(JSON.parse(response.body)).to include("status" => {"message"=>"User couldn't be created successfully. Password confirmation doesn't match Password"})
      end
    end
  end
end
