Rails.application.routes.draw do
  resources :paiements
  resources :type_tarifs
  resources :modepaies
  resources :categories
  resources :assurances
  resources :options
  resources :plannings
  resources :reservations
  resources :voitures
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
