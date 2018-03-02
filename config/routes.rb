Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#news'
  get '/about' => 'pages#about'
  get '/route' => 'pages#route'
  get '/score' => 'pages#score'
  
  get '/announcements' => 'pages#news'
  get '/announcements/new' => 'pages#new', as: 'news_new'
  post '/announcements/new' => 'pages#create', as: 'news_create'
  get '/announcements/:id' => 'pages#show', as: 'announcement'
  get '/announcements/:id/edit' => 'pages#edit', as: 'announcement_edit'
  patch '/announcements/:id' => 'pages#update', as: 'edit_announcement'
  delete '/announcements/:id' => 'pages#destroy', as: 'news_destroy'
  
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: 'logout'
end
