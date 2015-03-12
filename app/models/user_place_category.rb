class UserPlaceCategory < ActiveRecord::Base
	belongs_to :user_places, :class_name => 'UserPlace', :foreign_key => 'userplace_id'
end
