Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount SwaggerUiEngine::Engine, at: '/api_docs'
  root to: 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  delete 'sign_out', to: 'sessions#destroy', as: 'logout'

  scope module: 'api' do
    resources :users, only: [:show, :create, :update]
    resources :sessions, only: :create
    resources :hospitals, only: [:index, :show]
    resources :departments, only: [:index, :show]
    resources :doctors, only: [:index, :show]
    resources :governorates, only: [:index, :show]
    resources :comments, only: [:index, :show, :create, :update]
    resources :specialties, only: [:index, :show]
  end
end
