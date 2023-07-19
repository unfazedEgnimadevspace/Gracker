class App::TrainingController < App::BaseController
  before_action :check_current_user, only: [:create]
 # Renders new page for training creation, the @freestyle_exercise variable is here cause we need to display it's gif and name in the views
  def new
    @freestyle_exercise = Exercise.find(params[:exercise])
    @training = @freestyle_exercise.trainings.build
  end
  # Create a new training object for an exercise
  def create
    exercise = Exercise.find(params[:training][:exercise_id])
    @training = exercise.trainings.build(training_params)
    @training.exercise_time = Time.now
    current_user.trainings << @training
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
    params.require(:training).permit(:weight, :number_of_sets, :number_of_reps, :exercise_id)
  end
  
end
