class Voiture < ApplicationRecord
	has_one :category
	has_many :planning
	# has_many :locations

	mount_uploader :image, ImageUploader
end
