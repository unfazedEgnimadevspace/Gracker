class App::FreestyleController < App::BaseController
  
  # This line queries the database for all the different values of the body part attribute and stores them
  FILTER_OPTIONS = Exercise.distinct.pluck(:body_part).freeze

  # renders all the exercises with that particular body part
  # also renders all the exercises that match a particular search param
  def index
   apply_filter(params[:filter_by]) 

   if params[:search] != nil 
    apply_search(params[:search])  
   end
  end

  # Renders the filter page where users can choose what body part they want to workout on
  def filter_page

  end
  

  private 

  # This method accept params on what body part the user wants to work out on then returns all the exercises in the database with that particular body part
  def apply_filter(filter_option)
    case filter_option
    when *FILTER_OPTIONS
      @freestyle_exercises = Exercise.where(body_part: filter_option).paginate(page: params[:page], per_page: 12)
    end
  end
  def apply_search(search_option)
    @freestyle_exercises = Exercise.where("name LIKE ?", "%#{search_option}%").paginate(page: params[:page], per_page: 12)
  end
  
end
