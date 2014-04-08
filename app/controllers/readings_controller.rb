class ReadingsController < ApplicationController

 	before_action :reading_params, only:[:create]
  
  def new
  	flash[:success]="Hi"
  	@reading=Reading.new
  end

  def create 
  	@reading=Reading.new(reading_params)
  	if @reading.save 
  		redirect_to root_path
  		flash[:success]="Your Reading was saved!"
  	else
  		render 'new'
  		flash[:error]= "There was an error with your reading"
  	end 
  end

  def index
  	@readings=Reading.all 
  end

  private
  	def reading_params
  		params.require(:reading).permit(:sugar_level)
  	end
end
