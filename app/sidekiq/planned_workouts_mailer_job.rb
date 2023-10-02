class PlannedWorkoutsMailerJob
  include Sidekiq::Job

  def perform(user_id, planned_workout_id)
   user = User.find(user_id)
   planned_workout = PlannedWorkout.find(planned_workout_id)

   
   PlannedWorkoutsMailer.planned_workout_reminder(user, planned_workout).deliver_now
  end
end