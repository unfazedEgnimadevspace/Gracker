class App::FreestyleController < App::BaseController

  # renders all the exercises with that particular body part
  # also renders all the exercises that match a particular search param
  def index
  
  end

  # Renders the filter page where users can choose what body part they want to workout on
  def filter_page

  end
  
  #Filters exercises database
  def filter_exercise
    apply_filter(params[:filter_by]) 

    if params[:search] != nil 
      @freestyle_exercises = Exercise.search(params[:search]).paginate(page: params[:page], per_page: 12) 
    end
  end

  
end
