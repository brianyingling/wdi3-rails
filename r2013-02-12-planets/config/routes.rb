R20130212Planets::Application.routes.draw do

  # usually use index to show a list
  get '/planets' => 'planets#index'
  root :to => 'planets#index'

  get '/planet/new' =>'planets#new'
  post '/planets' => 'planets#create'

  get '/planets/:id' => 'planets#show', :as => 'planet'


  post '/planets/:id/delete'=>'planets#destroy', :as => 'planet_delete'
  get '/planets/:id/edit'=>'planets#edit', :as => 'planet_edit'
  post '/planets/:id' => 'planets#update'


end
