R20130211StockMovie::Application.routes.draw do

get '/' => 'home#index'
get '/about' => 'home#about'
get '/faq' => 'home#faq'
get '/stock' => 'stock#index'
get '/stock/show_quote'=> 'stock#show_quote'
get '/movie' => 'movie#index'
get '/movie/show_movie' => 'movie#show_movie'

end
