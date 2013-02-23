Tubez::Application.routes.draw do
  root :to => 'home#index'
  get '/videos/new' => 'videos#new'
  post '/videos/new' => 'videos#search'
  get '/videos' => 'videos#index'
end
