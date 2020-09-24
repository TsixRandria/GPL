class HomepageController < ApplicationController
  def index
  	# @location = location.new
  	# render template: '/options/new'

  end

  def mentions
  end

  def conditions
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    
      if @location.save
        puts "location valider"
      else
        puts "location non valider"
      end
    
  end
 

  private
    def location_params
      params.require(:location).permit(:lieu_de_depart, :depart, :lieu_de_retour, :retour)
    end
end
