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

   get 'myteam_requests', to: 'requests#myteamrequests' , as: 'myteam_requests'
   get 'refus_request', to: 'requests#refus' , as: 'requests_refus'

  devise_for :users

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
