class User < ActiveRecord::Base
  has_secure_password


  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, uniqueness: true, case_sensitive: false, presence: true
  validates :password, presence: true, length: { minimum: 5 } 
  validates :password_confirmation, presence: true


  def self.authenticate_with_credentials(email, password)
    new_email = email.downcase
    user = User.find_by_email(new_email)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end