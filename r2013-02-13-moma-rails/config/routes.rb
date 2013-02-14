R20130213MomaRails::Application.routes.draw do

  #created default seven routes for Artists table
  # get /artists, artists/new, artists/:id, artists/:id/edit
  # post /artists
  # put /artists, #delete /artists/:id
  #
  # see rake routes
  resources :artists, :paintings
  get '/'=>'paintings#index'

end
