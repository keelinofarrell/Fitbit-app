class MyFitbit < ActiveRecord::Base

	belongs_to :fitbit
	belongs_to :member
end
