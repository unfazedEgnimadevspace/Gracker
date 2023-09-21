class App::TrainingController < App::BaseController
 # Renders new page for training creation, the @freestyle_exercise variable is here cause we need to display it's gif and name in the views
  def new
    @freestyle_exercise = Exercise.find(params[:exercise])
    @training = @freestyle_exercise.trainings.build
  end
  # Create a new training object for an exercise
  def create
    @training = current_user.trainings.build(training_params)
    if @training.save 
      flash[:notice] = "Sucessfully created training"
      redirect_to app_root_url
    else  
      render :new
    end
  end
  
  def show

  end

  private 
  
  def training_params
    params.require(:training).permit(:weight, :number_of_sets, :number_of_reps, :exercise_id).merge(exercise_time: Time.current)
  end
  
end
