class TypeTarif < ApplicationRecord
	has_many :modepaies
	has_many :reservations
end
