Rails.application.routes.draw do
 
   devise_for :clients, :as => 'espaceclients'
root to:'homepage#index'
  get '/conditions-generales-de-location' => 'homepage#conditions', :as => 'conditions'
  get '/mentions-legales' => 'homepage#mentions', :as => 'mentions'
 
  
 #contact
  get '/contact' => 'contact#contact', :as => 'contact'


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
