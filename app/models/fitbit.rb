class Fitbit < ActiveRecord::Base

	has_many :myFitbits, dependent: :destroy
	has_many :comments, :dependent => :destroy
	
	def average_stars
		comments.average(:stars)
	end
end
