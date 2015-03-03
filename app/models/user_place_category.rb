class UserPlaceCategory < ActiveRecord::Base
	belongs_to :user_places
	belongs_to :place_categories
	has_many :user_place_category_matches
	has_many :matches, through :user_place_category_matches
end
