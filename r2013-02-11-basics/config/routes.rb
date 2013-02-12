R20130211Basics::Application.routes.draw do

  # verb + URL => execute homepage function inside home class
  # home controller inside /controllers folder
  get '/home' => 'home#homepage'
  get '/about' =>'home#about'
  get '/faq' => 'home#faq'

  get '/dogs' => 'dogs#index'
  get '/dogs/new' => 'dogs#new'
  get '/dogs/faq' => 'dogs#faq'
  get '/dogs/faq2' => 'dogs#faq2'

  get '/auto/:color' => 'auto#color'
  get '/auto/:hp/:torque' => 'auto#engine'

  # get '/calc/:x/:y/add' => 'calc#add'
  # get '/calc/:x/:y/subtract' => 'calc#subtract'
  get '/calc/:x/:y/:operator' => 'calc#calc'

  get '/funny' => 'funny#lol'

  root :to => 'home#homepage'
end
