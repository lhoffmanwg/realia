class ApplicationController < ActionController::Base

    helper_method :require_login
     def require_login
        unless logged_in?
          flash[:error] = "You must be logged in to access this section"
          redirect_to login_path
        end
      end

    helper_method :logged_in?  
    def logged_in?
      !!session[:buyer_id]
    end

    def current_buyer
       if session[:buyer_id]
         @current_buyer = Buyer.find_by(id: session[:buyer_id])
       else
          redirect_to login_path
       end
   end



  end
