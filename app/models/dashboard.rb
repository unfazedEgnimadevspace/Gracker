class Dashboard 
    def initialize(user)
      @user = user 
      @start_time = 1.week.ago 
      @end_time = Time.now 
      initialize_queries
    end

    def initialize_queries 
        @food_query = @user.foods.where(consumed_at: @start_time..@end_time)
        @training_query = @user.trainings.where(exercise_time: @start_time..@end_time)
        @planned_workouts_query = @user.planned_workouts.where(created_at: @start_time..@end_time)
    end

    def total_meals
        @total_meals ||= @food_query.count
    end

    def total_calories
        @total_calories ||= @food_query.count
    end

    def planned_workouts 
        @planned_workouts ||= @planned_workouts_query.count 
    end
    def number_of_exercises_performed
        @number_of_exercises_performed ||= @training_query.count
    end

    def number_of_reps_performed
        @number_of_reps ||= @training_query.sum(:number_of_reps)
    end

    def number_of_sets_performed
        @number_of_sets ||= @training_query.sum(:number_of_sets)
    end
    

end