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
      
      redirect_to ("/attendance/index")
  end 
  
  def index
    @attendances = Attendance.all
  end
  
  
end
