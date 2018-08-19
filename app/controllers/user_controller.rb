class UserController < ApplicationController
  def login_page
    
  end
  
  def login
      @user = User.find_by(name: params[:name])
    
    if @user
      
      session[:user_id] = @user.id
      redirect_to("/land")
       
    else
      render("user/login_page")
    end
  end
  
  
  def logout
    session[:user_id] = nil
    redirect_to("/user/index")
    
  end
  
  
  
  def new
    
    @user = User.new
    
  end
  
  def create
    
     @user = User.new
     @user.name = params[:name]
     @user.admin = params[:admin]
     @user.save
     redirect_to ("/user/index")
    
  end

  def index
    @users = User.all
  end
end
