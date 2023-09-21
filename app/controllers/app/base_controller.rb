#All controllers that require user to be logged in should subclass from this parent controller
#Any changes made to this controller affects all the sub-controllers that inherit from it

class App::BaseController < ApplicationController
    before_action :authenticate_user!
    
    FILTER_OPTIONS = Exercise.distinct.pluck(:body_part).freeze

    def apply_filter(filter_option)
      case filter_option
      when *FILTER_OPTIONS
        @freestyle_exercises = Exercise.where(body_part: filter_option).paginate(page: params[:page], per_page: 12)
      end
    end
end