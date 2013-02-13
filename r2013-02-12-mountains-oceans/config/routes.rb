R20130212MountainsOceans::Application.routes.draw do

  get '/' => 'home#index'
  get '/mountains/new' => 'mountains#new'
  get '/mountains' => 'mountains#show'
  get '/mountains/:id/edit' => 'mountains#edit', :as => 'mountain_edit'
  get 'mountains/:id' => 'mountains#index', :as =>'mountain'

  post '/mountains/new' => 'mountains#create', :as => 'mountains_create'
  post '/mountains/:id/delete' => 'mountains#destroy', :as => 'mountain_delete'
  post '/mountains/:id' => 'mountains#update', :as => 'mountain_update'
end
