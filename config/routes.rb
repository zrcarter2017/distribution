Rails.application.routes.draw do
  resources :schedules do
  collection { post :import }
 end
 	root to: "schedules#index"
 
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    # These routes will be for signup. The first renders a form in the browse, the second will 
    # receive the form and create a user in our database using the data given to us by the user.
    get '/signup' => 'consumers#new'
    post '/consumers' => 'consumers#create'
end

