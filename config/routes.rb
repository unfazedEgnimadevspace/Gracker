Rails.application.routes.draw do
  root 'website/pages#show', page: "home"
  devise_for :users, controllers: {
    omniauth_callbacks: 'omniauth_callbacks'
  }

  # Namespace for pages that do not require authentication
  namespace :website do 
    get '/pages/:page', to: "pages#show"
    resources :contacts
  end
  # Namespace for pages that require authentication
  namespace :app do 
    root 'main#home'
    resources :freestyle, except: %i[filter_page]
    resources :foods
    resources :training
    resources :planned_workouts
    get '/freetraining', to: "freestyle#filter_page"
    get '/planworkouts', to: "planned_workouts#filter_page"
    get '/plan_workouts_filter', to: "planned_workouts#filter_exercise"
    get '/freestyle_training_filter', to: "freestyle#filter_exercise"
  end
  get '*path', to: 'errors#not_found', via: :all, constraints: lambda { |req|
    !req.path.starts_with?('/rails/active_storage')
  }
  
end
