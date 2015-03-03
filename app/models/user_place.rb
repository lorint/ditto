class UserPlace < ActiveRecord::Base
	belongs_to :users
	belongs_to :places
	has_many :user_place_categories
end
