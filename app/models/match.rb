class Match < ActiveRecord::Base
	belongs_to :users, :class_name => 'User', :foreign_key =>'user1_id', :foreign_key =>'user2_id'
	# has_many :user_place_categories, :class_name => 'UserPlaceCategory', :foreign_key => "userplace_id"
	has_many :user_place_category_matches, :class_name => "UserPlaceCategory", :foreign_key => "userplace_id"
	has_many :user_place_categories, :foreign_key => "userplace_id"
	# through: :user_place_category_matches
end