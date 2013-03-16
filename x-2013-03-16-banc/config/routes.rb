X20130316Banc::Application.routes.draw do
  root :to => 'home#index'
  resources :banks, :only => [:index]
end
