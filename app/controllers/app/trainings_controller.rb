class App::TrainingsController < ApplicationController
  def create
    exercise = Exercise.find(params[:training][:exercise_id])
    @training = exercise.trainings.build(training_params)
    if @training.save 
      flash[:notice] = "Sucessfully created training"
      redirect_to root_path
    else  
        render 'freestyle/show'
    end
  end

  def destroy
  end

  private 
  def training_params
    params.require(:training).permit(:weight, :number_of_sets, :number_of_reps, :exercise_id)
  end
  
end
