class PlannedWorkoutsMailer < ApplicationMailer
    def planned_workout_reminder(user, planned_workout) 
        @user = user 
        @planned_workout = planned_workout
        @planned_workout_exercise = Exercise.find(planned_workout.exercise_id)
        mail(to: @user.email, subject: 'Workout Reminder') do |format|
          format.text
          format.html
        end
    end
end