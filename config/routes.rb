Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do 
      resources :todos
      resources :goals
    end 
  end 

  
  # so the url for fetch will be "localhost:3000/api/v1/goals"
end
