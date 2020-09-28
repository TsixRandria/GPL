class ArticleSaintMarieController < ApplicationController
  def index
  	@voitures = Voiture.all
  	@locations = Location.all
  	@options = Option.all
  end
end
