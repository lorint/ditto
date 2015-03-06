class UserPlace < ActiveRecord::Base
	belongs_to :users
	has_many :user_place_categories
end
