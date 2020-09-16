class Reservation < ApplicationRecord
	belongs_to :tarif
	has_one :reservation
	has_many :typeOption
end
