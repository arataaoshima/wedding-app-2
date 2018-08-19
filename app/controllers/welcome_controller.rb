class WelcomeController < ApplicationController
  def home
  end
  
  def land
    if @current_user == nil
        redirect_to("/")
    end
  end
    
end
