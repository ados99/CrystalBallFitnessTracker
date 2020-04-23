Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  resources :records
  resources :meals
  resources :inputs
  root 'inputs#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
