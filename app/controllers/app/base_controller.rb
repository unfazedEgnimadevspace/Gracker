#All controllers that require user to be logged in should subclass from this parent controller
#Any changes made to this controller affects all the sub-controllers that inherit from it

class App::BaseController < ApplicationController
    before_action :authenticate_user!

    def check_current_user
      return unless current_user
      
      flash[:alert] = "You have to be logged in first"
      redirect_to new_user_session_url
    end
end