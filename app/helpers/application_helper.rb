module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Gracker"
    if page_title.empty?
        base_title
    else
        page_title + ' | ' + base_title
    end
  end

  def gravatar_for(user, style)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.first_name, class: style )
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
