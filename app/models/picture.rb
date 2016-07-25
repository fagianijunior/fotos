class Picture < ApplicationRecord
	has_many :comments
	has_many :up_votes
	validates :path, presence: true
end
