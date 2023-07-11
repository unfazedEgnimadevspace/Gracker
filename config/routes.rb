Rails.application.routes.draw do
  root 'website/pages#show', page: "home"
  devise_for :users

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
    get '/freetraining', to: "freestyle#filter_page"
  end
  
end
