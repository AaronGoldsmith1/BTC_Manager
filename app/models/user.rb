class User < ApplicationRecord
  has_many :addresses
  has_secure_password
end
