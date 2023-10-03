Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  namespace 'api' do
    namespace 'v1' do
      resources :places, only: [:index, :show, :create, :destroy]
      resources :travels, only: [:index, :show, :create, :destroy]
      resources :reservations, only: [:index, :create, :destroy]
      resources :users
    end
  end
end
