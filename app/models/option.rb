class Option < ApplicationRecord
	has_many :type_option
	belongs_to :location
end
