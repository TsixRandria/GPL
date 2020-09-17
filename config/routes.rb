Rails.application.routes.draw do

   devise_for :clients
  
root to:'homepage#index'
  get '/conditions-generales-de-location' => 'homepage#conditions', :as => 'conditions'
  get '/mentions-legales' => 'homepage#mentions', :as => 'mentions'

  
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
