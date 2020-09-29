class Category < ApplicationRecord
	has_many :voiture
	belongs_to :assurance
end
