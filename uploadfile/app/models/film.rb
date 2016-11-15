class Film < ApplicationRecord
	has_many :comments

	validates_presence_of :description, :title
end
