R20130312Flirt::Application.routes.draw do
  resources :subscribers, :only=> [:new, :create]
  root :to=>'home#index'
  get '/login'=>'session#new'


end
