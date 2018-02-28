Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#news'
  get '/about' => 'pages#about'
  get '/route' => 'pages#route'
  get '/score' => 'pages#score'
  get '/announcements' => 'pages#news'
  get '/announcements/:id' => 'pages#show', as: 'announcement'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy', as: 'logout'
end
