Tubez::Application.routes.draw do
  root :to => 'home#index'
  get '/videos/new' => 'videos#new'
end
