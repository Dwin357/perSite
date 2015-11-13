class User < ActiveRecord::Base

	validates :username, presence: true


	def password
		@password ||= BCrypt::Password.new(password_digest)
	end

	def password=(new_password)
		@password = BCrypt::Password.create(new_password)
		self.password_digest = @password
	end

	def authenticate?(pword)
		password == pword
	end


end
