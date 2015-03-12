class Event < ActiveRecord::Base
	has_many :match_events, :class_name => "MatchEvent", :foreign_key => "match_id"
	has_many :matches, :class_name => "Match", :foreign_key => "upcm_id"
	# through: :match_events

end
