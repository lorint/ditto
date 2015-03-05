class User < ActiveRecord::Base
	has_many :photos, as: :img
	has_many :user_places
	has_many :places, through: :user_places
	has_many :matches
end
