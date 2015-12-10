class Member < ActiveRecord::Base

	# has_secure_password

	

	validates :email, uniqueness: { case_sensitive: false, message: "email address already exists" }

	# validates :first_name, :last_name, :zipcode, :gender,
	# 					presence: true

end