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
    it "is invalid without a last name" do
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
    it "is invalid without a password confirmation" do
      @user = User.new(first_name: "Jacky", last_name: "Johnson", email: "jackyj@mail.com", password: "12345678", password_confirmation: nil)
      @user.save
      expect(@user).to_not be_valid
    end

    #invalid if password and password confirmation do not match
      it "is invalid if password and password confirmation don't match" do
        @user = User.new(first_name: "Jacky", last_name: "Johnson", email: "jackyj@mail.com", password: "12345678", password_confirmation: "87654321")
        @user.save
        expect(@user).to_not be_valid
      end

     #invalid if password is too short
     it "is invalid if password is shorter than 5 characters" do
      @user = User.new(first_name: "Jacky", last_name: "Johnson", email: "jackyj@mail.com", password: "1234", password_confirmation: "1234")
      @user.save
      expect(@user).to_not be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    it "should return an authenticated user if given valid email and password" do
      @user = User.new(first_name: "Jacky", last_name: "Johnson", email: "jackyj@mail.com", password: "12345678", password_confirmation: "12345678")
      @user.save

      expect(User.authenticate_with_credentials(@user.email, @user.password)).to eq(@user)
    end

    it "shoud not return an authenticated user if user email invalid" do
      @user = User.new(first_name: "Jacky", last_name: "Johnson", email: "jackyj@mail.com", password: "12345678", password_confirmation: "12345678")
      @user.save
      expect(User.authenticate_with_credentials("some_email@mail.com", @user.password)).to be_nil
    end

    it "shoud not return an authenticated user if user email invalid" do
      @user = User.new(first_name: "Jacky", last_name: "Johnson", email: "jackyj@mail.com", password: "12345678", password_confirmation: "12345678")
      @user.save
      expect(User.authenticate_with_credentials(@user.email, "some_password")).to be_nil
    end
  end
end

