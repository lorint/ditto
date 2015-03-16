class Category < ActiveRecord::Base
	has_many :place_categories
end
