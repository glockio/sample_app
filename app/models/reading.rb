class Reading < ActiveRecord::Base

	validates :sugar_level, presence:true, numericality: {greater_than_or_equal_to: 0}
	

  def self.recent_readings
    order("created_at desc").limit(5)
  end
end

  