require 'rails_helper'

describe UserPlace, :type => :model do


		
	describe UserPlace do
  		it { should belong_to(:users).class_name('User') }
  		it { should have_many(:user_place_categories).class_name('UserPlaceCategory') }
	end	

end

