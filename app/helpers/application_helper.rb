module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Gracker"
    if page_title.empty?
        base_title
    else
        page_title + ' | ' + base_title
    end
  end

  def exercise_gif_url(exercise)
    formatted_id = sprintf("%04d", exercise.id)
    if Rails.env.development?
      image_path("/exercise_gifs/#{formatted_id}.gif")
    else  
      # TODO: Logic for creating url in 
    end
  end
    
end
