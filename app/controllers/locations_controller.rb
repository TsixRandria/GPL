class LocationsController < ApplicationController
 
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    
      if @location.save
       
        if @location.lieu_de_depart == "Sainte_Marie"
          redirect_to article_saint_marie_index_path
        else @location.lieu_de_depart == "Aéroport_de_la_Réunion"
          redirect_to article_aeroport_index_path
        end
        
      else
        puts '========================================'
        
      end
    
  end
 

  private
    def location_params
      params.require(:location).permit(:lieu_de_depart, :d_depart, :lieu_de_retour, :d_retour, :t_retour, :t_depart)
    end
end
