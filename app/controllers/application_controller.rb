class ApplicationController < ActionController::Base
  
  protect_from_forgery
  include SessionsHelper
  include Mobvious::Rails::Controller

  before_filter :check_authorization 

  private

   def check_authorization
    
   if !signed_in?
        redirect_to root_path
    else
        unless current_user.roles.detect{|role|
          role.rights.detect{|right|
            session[:intended_action] = action_name
                right.action == action_name && right.controller == self.class.controller_path
          }
       }
      flash[:notice] = "You are not authorized to view this page"
     request.env["http_REFERER"] ? (redirect_to :back) : (redirect_to root_path)
     return false
    end 
  end
end

end
