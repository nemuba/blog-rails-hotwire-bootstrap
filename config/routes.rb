Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :posts do
    get 'destroy', on: :member, as: :destroy
  end

  get "up" => "rails/health#show", as: :rails_health_check

  root 'posts#index'
end
