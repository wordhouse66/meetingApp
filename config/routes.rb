Rails.application.routes.draw do

  resources :calends, path: 'calendars'
  resources :rangers
  resources :rangexes
  devise_for :users
  
  resources :clients do
    collection do
      get 'search'
    end
  	resources :meetings
  end

  get '/meetings' => 'meetings#all_meetings'
  get '/preview' => 'meetings#preview'
  get '/preload' => 'meetings#preload'

  resources :appointments
  root 'home#index'
 # resources :appointments
  resources :rugs

  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
