class Comment < ApplicationRecord
	belongs_to :gram
	belongs_to :user

	validates :message, presence: true, length: {minimum: 5, maximum: 140}
end
