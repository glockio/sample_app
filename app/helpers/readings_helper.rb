module ReadingsHelper

  def reading_time_helper(reading)
    if reading.created_at==reading.updated_at
      time=reading.created_at
    else
      time=readining.updated_at
    end 
    distance_of_time_in_words(time, Time.now)
  end
end