class Tarif < ApplicationRecord
	belongs_to :voiture
	belongs_to :reservation
end
