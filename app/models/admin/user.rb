
class Admin::User < ApplicationRecord
	attr_accessor :password
	before_save :encrypt_password
	include BCrypt
	def self.authentication(email,password)
		user = find_by_email(email)
		if user && user_password_hash == BCrypt::Engine.hash_secret(password,user.password_salt)
			user
		else
			nil
		end
	end

	def encrypt_password
		if password.present?
			#self.password_salt = BCrypt::Password.generate_salt
			self.password_hash = BCrypt::Password.create(password, password_salt)
		end
	end
end
