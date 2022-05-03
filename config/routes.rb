Rails.application.routes.draw do
  resources :contact_us_requests
  resources :departures
  get "/contact-us" => "contact_us#new"

  resources :contact_us
  root "pages#home"
  get "/index" => "pages#home"
  get '/why-travel-with-us' => "pages#why", as: "why"
  get '/privacy-policy' => "pages#privacy", as: "privacy"

  resources :statements
  resources :lodgings
  resources :itinerary_days
  resources :trips
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end