class Voiture < ApplicationRecord
	has_one :category
	has_many :planning

	mount_uploader :image, ImageUploader
end
