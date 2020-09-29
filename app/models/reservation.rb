class Reservation < ApplicationRecord
	belongs_to :client
	has_one :tarif
	has_many :reservation_options
end
