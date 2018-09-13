class AttendanceController < ApplicationController
  def new
  end
  
  def create
      @attendance = Attendance.new
      @attendance.name = params[:name]
      @attendance.email = params[:email]
      @attendance.allergy = params[:allergy]
      @attendance.book = params[:book]
      @attendance.content = params[:content]
      @attendance.come = 1
      @attendance.save
      
      redirect_to ("/attendance/thankyou")
  end 
  
  def index
      if @current_user == nil
        redirect_to("/")
        
      else 
        @attendances = Attendance.all
      end
    
  end
  
  def thankyou
    
  end
  
  def sorry
  end
  
   def sorrysend
      @attendance = Attendance.new
      @attendance.name = params[:name]
      @attendance.come = 2
      @attendance.save
      
      redirect_to ("/canntocome/land")
   end 
   
  def list
    
    @attendances = Attendance.all
    
    @attendances_index = []
    @attendances.each do |attendance|
    @attendances_index << attendance
    end
    
   respond_to do |f|
     f.html
     f.json {render json: @attendances_index }
    end
    
  end
  
  def delete
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
    redirect_to ("/attendance/index")
  end
  
  def update
    @attendance = Attendance.find(params[:id])

  end
  
  def change
    @attendance = Attendance.find(params[:id])
      @attendance.name = params[:name]
      @attendance.email = params[:email]
      @attendance.allergy = params[:allergy]
      @attendance.book = params[:book]
      @attendance.content = params[:content]
      @attendance.come = params[:attendance]
      @attendance.save
      
      redirect_to ("/attendance/index")
  end
  
  def sorry_land
  end
  
end
