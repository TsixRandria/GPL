class Location < ApplicationRecord
	validates_presence_of :d_depart
	validates_presence_of :d_retour
end
