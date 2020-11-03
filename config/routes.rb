Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do 
      resources :foods
      resources :trackers
    end
  end 

end
 