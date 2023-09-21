class App::MainController < App::BaseController
    def home
      start_time = 1.week.ago
      end_time = Time.now
    
      foods = Food.where(consumed_at: start_time..end_time)
      trainings = Training.where(exercise_time: start_time..end_time)
    
      @total_meals = foods.size
      @total_calories = foods.sum(:calories)
      @number_of_exercises_performed = trainings.size
      @number_of_reps_performed = trainings.sum(:number_of_reps)
      @number_of_sets_performed = trainings.sum(:number_of_sets)
    end
  end