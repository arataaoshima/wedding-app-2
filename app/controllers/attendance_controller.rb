class AttendanceController < ApplicationController
  def new
  end
  
  def create
    
    
      @attendance = Attendance.new
      @attendance.name = params[:name]
      @attendance.email = params[:email]
      @attendance.book = params[:book]
      @attendance.content = params[:content]
      @attendance.come = params[:attendance]
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
  
  
end
