require 'rails_helper'

RSpec.describe User, type: :model do
	before(:all) do
		@user = create(:user)
	end

  it " has a name attribute" do
  	expect(@user.username).to eq("MyNameString")
  end


end
