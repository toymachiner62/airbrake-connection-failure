class ApplicationController < ActionController::Base
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :get_current_user
  
  def get_current_user
    #raise exception "asdf"
    unless current_user.nil?
      
      if current_user.email == "jeff@gmail.com"
        raise "error for jeff@gmail.com"
      end
      puts "current_user = #{current_user}"
    end
  end
  
  
end
