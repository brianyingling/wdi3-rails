R20130215Pinterest::Application.routes.draw do
  get '/pinterest' => 'pinterest#show'

  root :to=>'home#index'
end
