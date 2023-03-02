Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :categories do
      resources :transacts
    end
  end

  # resources :transacts, only: [:index]
  # Defines the root path route ("/")
   root "splashes#index"
end
