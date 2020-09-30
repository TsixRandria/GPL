class Tarif < ApplicationRecord
	belongs_to :voiture
	has_many :reservation
end
