class Gram < ApplicationRecord
	mount_uploader :picture, PictureUploader
	validates :message, presence: true
	validates :picture, presence: true
	
	has_many :comments, dependent: :destroy
	belongs_to :user
end
