class App::FreestyleController < App::BaseController
    FILTER_OPTIONS = Exercise.distinct.pluck(:body_part).freeze
    def index 
        @filter_options = Exercise.distinct.pluck(:body_part).freeze
    end

    def filter_page
        apply_filter(params[:filter_by]) if params[:filter_by].present?
    end
    def show
        @freestyle_exercise = Exercise.find(params[:id])
        @training = @freestyle_exercise.trainings.build
    end
    
    
    private 

    def apply_filter(filter_option)
        case filter_option
        when *FILTER_OPTIONS
          @freestyle_exercises = Exercise.where(body_part: filter_option).paginate(page: params[:page], per_page: 12)
        end

    end
    
end