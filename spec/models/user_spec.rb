require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    # initial example that ensures that a user creates with all four fields save
    it "is a valid user" do
      @user = User.new(first_name: "Jacky", last_name: "Johnson", email: "jackyj@mail.com", password: "12345678", password_confirmation: "12345678")
      @user.save
      expect(@user).to be_valid
    end

    #first name required
    it "is invalid without a first name" do
      @user = User.new(first_name: nil, last_name: "Johnson", email: "jackyj@mail.com", password: "12345678", password_confirmation: "12345678")
      @user.save
      expect(@user).to_not be_valid
    end

  end
end

