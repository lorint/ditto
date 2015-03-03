class Photo < ActiveRecord::Base
	belongs_to :img polymorphic: true
end
