class PlaceCategory < ActiveRecord::Base
	belongs_to :places
	belongs_to :categories
end
