require 'bcrypt'
class User < ApplicationRecord
  validates :email, presence: true, uniqueness:true
  include BCrypt

  has_many :addresses, dependent: :destroy
  has_secure_password

  def password=(new_password)
		@password = Password.create(new_password)
		self.password_digest = @password
	end

  def password
		@password ||= Password.new(password_digest)
	end
end
