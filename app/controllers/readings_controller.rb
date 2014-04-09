class ReadingsController < ApplicationController
  before_action :get_reading, only: [:edit, :update, :destroy]
 	before_action :reading_params, only:[:create, :update]
  
  def new
  	@reading=Reading.new
    @recent_readings=Reading.recent_readings
    @button="Submit"
  end

  def create 
  	@reading=Reading.new(reading_params)
  	if @reading.save 
  		redirect_to root_path
  		flash[:success]="Your Reading was saved!"
  	else
      @recent_readings=Reading.recent_readings # QUESTION! Is there a way to use render 'new' and not to have to include variables defined in "new"
  		render 'new' 
  		flash[:error]= "There was an error with your reading"
  	end 
  end

  def edit 
    @button="Update"
  end

  def update
    @button="Update"
    if @reading.update(reading_params)
      flash[:success]="Update Successful"
      redirect_to root_path
    else 
      flash[:error]= "Sorry... we could not update your reading"
      render 'edit'
    end 
  end

  def index
  	@readings=Reading.order("created_at DESC")
  end

  def destroy
    @reading.destroy
    redirect_to root_path
    flash[:notice]="Your reading has been removed"
  end

  private
  	def reading_params
  		params.require(:reading).permit(:sugar_level)
  	end

    def get_reading
      @reading=Reading.find(params[:id])
    end
end
