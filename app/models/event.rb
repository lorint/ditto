class Event < ActiveRecord::Base
	has_many :match_events
	has_many :matches, through: :match_events
end
