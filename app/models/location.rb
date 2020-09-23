class Location < ApplicationRecord
	validates_presence_of :lieu_de_retour
	belongs_to :voiture
end
