require 'rails_helper'

RSpec.describe Event, :type => :model do

		
	describe Event do
  		it { should have_many(:match_events).class_name('MatchEvent') }
  		it { should have_many(:matches).class_name('Match') }
	end	

end


