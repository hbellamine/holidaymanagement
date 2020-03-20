Rails.application.routes.draw do
  resources :safetymanagers
  resources :hrmanagers
  resources :managers
  resources :daysoffs
  resources :requests
  resources :teams
  resources :employees do
      resources :requests
  end


  devise_for :users

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
