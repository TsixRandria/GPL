class Voiture < ApplicationRecord
	#belongs_to :category
	has_one :tarif
	#has_many :planning

	mount_uploader :image, ImageUploader
end
