Rails.application.routes.draw do
  
  root 'home#index'
  
  namespace :api do
    resources :clients do
      resources :meetings
    end
    resources :users
  end
  
  resources :clients do
    collection do
      get 'search'
    end
    resources :meetings
  end
  
  resources :calends, path: 'calendars'
  resources :rangexes

  devise_for :users
  
  

  get '/meetings' => 'meetings#all_meetings'
  get '/preview' => 'meetings#preview'
  get '/preload' => 'meetings#preload'

  
  
 
  
  
  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
