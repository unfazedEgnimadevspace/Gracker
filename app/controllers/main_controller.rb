class MainController < ApplicationController
  skip_before_action :authenticate_user!
  
  def home
  end

  def about
  end

  def contact 

  end
  
  def pricing 

  end
end