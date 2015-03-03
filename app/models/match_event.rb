class MatchEvent < ActiveRecord::Base
	belongs_to :matches
	belongs_to :events
end
