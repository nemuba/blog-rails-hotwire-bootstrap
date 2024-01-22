Rails.application.routes.draw do
  resources :posts do
    get 'destroy', on: :member, as: :destroy
  end

  get "up" => "rails/health#show", as: :rails_health_check

  root 'posts#index'
end
