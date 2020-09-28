Rails.application.routes.draw do
 

  
  get 'article_saint_marie/index', :as => 'article_saint_marie/index'
  get 'article_aeroport/index', :as => 'article_aeroport/index'
  resources :locations
  root to:'locations#new'
  get 'port/port'

  get 'aeroport/aeroport'

   devise_for :clients

  
# root to:'homepage#index'
  get '/conditions-generales-de-location' => 'homepage#conditions', :as => 'conditions'
  get '/mentions-legales' => 'homepage#mentions', :as => 'mentions'



  
 #contact
  get '/contact' => 'contact#contact', :as => 'contact'






  #location port
  get '/location-voiture-sainte-marie' => 'port#port', :as => 'port'


 #locationRoland
  get '/location-voiture-aeroport-reunion' => 'aeroport#aeroport', :as => 'aeroport'
  



 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
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
