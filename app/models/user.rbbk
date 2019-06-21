class User < ApplicationRecord
   validates :user_name, presence: true
   validates :user_name, uniqueness: true
   #validates :password, presence: true

   has_secure_password

end
