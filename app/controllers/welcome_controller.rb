class WelcomeController < ApplicationController
  def home
    if @current_user 
        redirect_to("/land")
    end
  end
  
  def land
    if @current_user == nil
        redirect_to("/")
    end
  end
    
end
