R20130218Tunr::Application.routes.draw do

  # goes to index method in the home controller
  root :to=> 'home#index'
  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  resources :genres, :albums, :artists


  get '/login'    => 'session#new'
  post '/login'   => 'session#create'
  delete '/login' => 'session#destroy'
end
