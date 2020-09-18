Rails.application.routes.draw do
 
   devise_for :clients

  
root to:'homepage#index'
  get '/conditions-generales-de-location' => 'homepage#conditions', :as => 'conditions'
  get '/mentions-legales' => 'homepage#mentions', :as => 'mentions'
<<<<<<< HEAD

=======
 
>>>>>>> 95ae70270f582d5c4eb4b6032e16cbb9937d2d26
  
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
