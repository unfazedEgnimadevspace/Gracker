class App::MainController < App::BaseController
    def home
      @dashboard = Dashboard.new(current_user)
    end
  end