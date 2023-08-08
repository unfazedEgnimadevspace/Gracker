class App::PlannedWorkoutsController < App::BaseController
  before_action :check_current_user
  before_action :set_planned_workout, only: [:edit, :update, :show, :destroy]

  def index
    @planned_workouts = current_user.planned_workouts.paginate(page: params[:page], per_page: 10)
  end

  def show
  end
  
  def new
    @choosen_exercise = Exercise.find(params[:exercise])
    @planned_workout = current_user.planned_workouts.build
  end

  def create
    @planned_workout = current_user.planned_workouts.build(planned_workouts_params)
    if @planned_workout.save 
      flash[:notice] = "Workout planned sucessfully"
      redirect_to app_planned_workout_path(@planned_workout)
    else
      render :new
    end
  end
  

  def edit
  end  

  def update
    if @planned_workout.update(planned_workouts_params)
      flash[:notice] = "Planned workouts updated sucessfully"
      redirect_to app_planned_workout_path(@planned_workout)
    else  
      render :edit
    end
  end

  def destroy
    @planned_workout.destroy
    flash[:danger] = "Planned workout deleted sucessfully"
    redirect_to app_planned_workouts_path
  end

  def filter_page
    
  end

  def filter_exercise
    apply_filter(params[:filter_by]) 

    if params[:search] != nil 
      @freestyle_exercises = Exercise.search(params[:search]).paginate(page: params[:page], per_page: 12) 
    end
  end
  
  
  
  

  private 

  def planned_workouts_params
    params.require(:planned_workout).permit(:date, :completed, :user_id, :exercise_id, :description, :hours, :minutes)
  end

  def set_planned_workout
    @planned_workout = current_user.planned_workouts.find(params[:id])
  end
  
end
