class User < ActiveRecord::Base
  has_secure_password

  validates :email,                 presence: true, uniqueness: { case_sensitive: false }
  validates :password,              presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :first_name,            presence: true
  validates :last_name,             presence: true
 
  def self.authenticate_with_credentials(email, password)
    #if successfully authenticated, return instance of the user

    #cleans email for white space and case
    email.downcase.strip

    @user = User.find_by_email(email)
    if @user
      #returns password (truthy) if password exists/matches
      if @user.authenticate(password)
        return @user
      end
    end
    #if not, return nil - by default it returns nil
  end
end
