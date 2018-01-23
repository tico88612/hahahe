Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#news'
  get '/about' => 'pages#about'
  get '/route' => 'pages#route'
  get '/score' => 'pages#score'
end
