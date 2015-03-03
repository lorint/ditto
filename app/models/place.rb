class Place < ActiveRecord::Base
	has_many :photos as: :img
	has_many :user_places
	has_many :users, through :user_places
	has_many :place_categories
	has_many :categories, through :place_categories
end
