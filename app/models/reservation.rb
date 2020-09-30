class Reservation < ApplicationRecord
	#belongs_to :client
	belongs_to :tarif
	has_many :reservation_options
end
