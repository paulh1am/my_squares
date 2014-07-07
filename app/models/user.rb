class User < ActiveRecord::Base
  has_many :squares

#     has_secure_password 
#expects pwrd digest column, pword, and pword auth - will encrypt and put in secure pwrd column

# validates :name, presence: true

end
