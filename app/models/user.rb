class User < ApplicationRecord
	# email validation to ensure the same email does not have more than 1 account
	validates :email, uniqueness: true

	# email validation to ensure an email is entered at the time of registration
	validates :email, presence: true

	# password validations to add entropy to passwords and make sure the length is at least 5
	validates :password, length: { minimum: 5, allow_nil: true }

	# defining the relationship between users and posts
	has_many :posts, dependent: :destroy
	has_many :comments, dependent: :destroy

	def password
		@password
	end

	#encrypts the password
	def password=(raw)
		@password = raw
		self.password_digest = BCrypt::Password.create(raw)
	end

	#checks if the raw password is equal to the encrypted password
	def is_password?(raw)
		BCrypt::Password.new(password_digest).is_password?(raw)
	end

	
end
