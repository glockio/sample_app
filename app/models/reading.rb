class Reading < ActiveRecord::Base

	validates :sugar_level, presence:true, numericality: {greater_than_or_equal_to: 0.00 , only_integer:false }
	
end
