Rails.application.routes.draw do

  get '/index' => 'homepage#index', :as => 'index'
  get '/conditions-generales-de-location' => 'homepage#conditions', :as => 'conditions'
  get '/mentions-legales' => 'homepage#mentions', :as => 'mentions'

  # get '/location-voiture-aeroport-reunion' => 
  # get '/location-voiture-sainte-marie' => 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
