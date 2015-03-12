require 'rails_helper'

RSpec.describe Match, :type => :model do
		before(:each) do
		@user1 = User.new(email: 'user@example.com', name: 'Example User') 
		@user2 = User.new(email: 'user@example.com', name: 'Example User') 

	end

		
	describe Match do
		it { should belong_to(:users).class_name('User') }
  		it { should have_many(:user_place_category_matches).class_name('UserPlaceCategory') }
		it { should have_many(:user_place_categories).class_name('UserPlaceCategory') }

  		#it { should have_many(:user_place_category_matches) }
  		  		#it { belongs_to(:users) }
	end	


	describe "when email is blank" do 
		#it { should validate_presence_of(:email) }
	end


	describe "when user signs in" do 
		#it { should validate_presence_of(:name) }
	end

 
	describe "when email is blank" do 
		#it { should validate_presence_of(:email) }
	end


end