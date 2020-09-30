class TarifSupplementaire < ApplicationRecord
	has_many :reservation_options
	belongs_to :tarif
end
