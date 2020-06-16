class ApplicationController < ActionController::Base
    # before_action :authorized
    # before_action :current_user 
    
    def current_user
      @current_user = User.find_by(id: session[:user_id])
    end
    
    def authorized
        byebug
        if @current_user 
        else
        flash[:notice] = "You must log into your account to see this page"
        redirect_to login_path 
      end
    end

end