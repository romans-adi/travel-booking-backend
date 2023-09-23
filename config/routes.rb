Rails.application.routes.draw do
  devise_for :users

  namespace 'api' do
    namespace 'v1' do
      resources :places, only: [:index, :show]
      resources :travels, only: [:index, :show]
      resources :reservations, only: [:index, :create, :destroy]
      resources :users, only: [:index, :show]
    end
  end
end
