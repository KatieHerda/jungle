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

    #last name required
    it "is invalid without a first name" do
      @user = User.new(first_name: "Jacky", last_name: nil, email: "jackyj@mail.com", password: "12345678", password_confirmation: "12345678")
      @user.save
      expect(@user).to_not be_valid
    end

    #email required
    it "is invalid without an email" do
      @user = User.new(first_name: "Jacky", last_name: "Johnson", email: nil, password: "12345678", password_confirmation: "12345678")
      @user.save
      expect(@user).to_not be_valid
    end

    #invalid without a password
    it "is invalid without a password" do
      @user = User.new(first_name: "Jacky", last_name: "Johnson", email: "jackyj@mail.com", password: nil, password_confirmation: "12345678")
      @user.save
      expect(@user).to_not be_valid
    end

    #invalid without a password confirmation
    it "is invalid without a password" do
      @user = User.new(first_name: "Jacky", last_name: "Johnson", email: "jackyj@mail.com", password: "12345678", password_confirmation: nil)
      @user.save
      expect(@user).to_not be_valid
    end

    #invalid if password and password confirmation do not match
      it "is invalid without a password" do
        @user = User.new(first_name: "Jacky", last_name: "Johnson", email: "jackyj@mail.com", password: "12345678", password_confirmation: "87654321")
        @user.save
        expect(@user).to_not be_valid
      end
  end
end

