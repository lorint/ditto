class UserPlace < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	has_many :user_place_categories, :class_name => 'UserPlaceCategory', :foreign_key => "userplace_id"
end
