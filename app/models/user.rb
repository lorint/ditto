class User < ActiveRecord::Base
	has_many :photos
	has_many :user_places
	has_many :user_place_categories, through: :user_places
	has_many :matches
end
