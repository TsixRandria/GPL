Rails.application.routes.draw do

   
 
  get 'clientsession/index'
   # devise_for :clients, controllers: {
   #  registration: 'clients/registrations'
   # }



  resources :contacts
    get '/contact' => 'contacts#new', :as => 'contacter'
  
  devise_for :admins, path: '/secret-gpl-page/admin', :skip => [:registrations],
    controllers: { 
    sessions: "admins/sessions"
  }, path_names: { sign_in: 'login', sign_out: 'logout'}


  get '/secret-gpl-page/admin/homepage' => 'home_admin#index', :as => 'homepage_admin'
  get '/secret-gpl-page/admin/dashboard' => 'dashboard_admin#dashboard', :as => 'dashboard_admin'

  devise_for :clients

  root to:'homepage#index'
  get '/conditions-generales-de-location' => 'homepage#conditions', :as => 'conditions'
  get '/mentions-legales' => 'homepage#mentions', :as => 'mentions'

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
  
  
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :voitures, only: [:index, :show]

    #nouvelle voiture
    get '/secret-gpl-page/admin/homepage/voitures/new' => 'home_admin#new', :as => 'new_voiture'
    post '/secret-gpl-page/admin/homepage/voitures' => 'home_admin#create'
    
    #edit voiture
    get '/secret-gpl-page/admin/homepage/voitures/:id/edit' => 'home_admin#edit', :as => 'edit_voiture'
    #get '/secret-gpl-page/admin/homepage/voitures/:id' => 'home_admin#show', :as => 'voiture'
    
    #Màj voiture
    patch '/secret-gpl-page/admin/homepage/voitures/:id' => 'home_admin#update'
    
    #suppression voiture
    delete '/secret-gpl-page/admin/homepage/voitures/:id' => 'home_admin#destroy'

  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


         #                   voitures GET        /voitures(.:format)              voitures#index
         #                            POST       /voitures(.:format)              voitures#create
         #                new_voiture GET        /voitures/new(.:format)          voitures#new
         #               edit_voiture GET        /voitures/:id/edit(.:format)     voitures#edit
         #                    voiture GET        /voitures/:id(.:format)          voitures#show
         #                            PATCH      /voitures/:id(.:format)          voitures#update
         #                            PUT        /voitures/:id(.:format)          voitures#update
         #        
end
