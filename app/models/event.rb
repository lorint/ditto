class Event < ActiveRecord::Base
	has_many :match_events
	has_many :matches, through: :match_events
<<<<<<< HEAD
=======
	include HTTParty
>>>>>>> 5fd26586475c09d6d5c55871d3414fcb18a024c7
end
