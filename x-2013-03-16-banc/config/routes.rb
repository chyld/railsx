X20130316Banc::Application.routes.draw do
  root :to => 'home#index'
  resources :banks, :only => [:index, :new, :create, :show]
  resources :transactions, :only => [:new, :create]
end
