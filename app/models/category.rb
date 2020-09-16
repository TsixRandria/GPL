class Category < ApplicationRecord
	belongs_to :voiture
	belongs_to :assurance
end
