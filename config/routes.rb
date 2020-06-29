Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do 
      resources :goals do 
        resources :todos
      end 
    end 
  end 

  
  # so the url for fetch will be "localhost:3000/api/v1/goals"
end
