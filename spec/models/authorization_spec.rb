require 'rails_helper'

describe Authorization, :type => :model do


		
	describe Authorization do
  		it { should validate_presence_of :provider }
  		it { should validate_presence_of :uid }
	end	

end

