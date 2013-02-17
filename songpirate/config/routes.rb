Songpirate::Application.routes.draw do
  resources :artists, :albums, :songs, :genres
  root :to => 'songs#index'
end
