class UserPlace < ActiveRecord::Base
	belongs_to :users, :class_name => 'User', :foreign_key => "user_id"
	has_many :user_place_categories, :class_name => 'UserPlaceCategory', :foreign_key => "userplace_id"
end
