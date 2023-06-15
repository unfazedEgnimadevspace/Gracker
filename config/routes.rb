Rails.application.routes.draw do
  namespace :app do 
    resources :freestyle 
    resources :training
  end
  devise_for :users
  root 'website/pages#home'
  get '/about', to: "website/pages#about"
  get '/pricing', to: "website/pages#pricing"
  get '/contact', to: "website/pages#contact"
  get '/freetraining', to: "app/freestyle#filter_page"
  get '*path', to: 'errors#not_found', via: :all
end

