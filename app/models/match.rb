class Match < ActiveRecord::Base
	belongs_to :users
	has_many :user_place_category_matches
	has_many :user_place_categories, through :user_place_category_matches
end
