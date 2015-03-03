class UserPlaceCategoryMatch < ActiveRecord::Base
	belongs_to :matches
	belongs_to :user_place_categories
end
