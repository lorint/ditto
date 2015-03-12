require 'rails_helper'

RSpec.describe User, :type => :model do
		before(:each) do
		@user = User.new(email: 'user@example.com', name: 'Example User') 
	end

		
	describe User do
  		it { should have_many(:photos) }
  		it { should have_many(:user_places) }
  		it { should have_many(:user_place_categories) }
  		it { should have_many(:authorizations) }
	end	


	describe "when email is blank" do 
		it { should validate_presence_of(:email) }
	end


	describe "when user signs in" do 
		it { should validate_presence_of(:name) }
	end

 
	describe "when email is blank" do 
		it { should validate_presence_of(:email) }
	end


end


