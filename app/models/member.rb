class Member < ActiveRecord::Base

	has_one :myFitbit, dependent: :destroy
	has_many :comments
	has_secure_password
	validates_uniqueness_of :username
	
end
