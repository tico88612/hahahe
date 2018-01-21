Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#news'
  get '/about' => 'pages#about'
  get '/race' => 'pages#race'
  get '/score' => 'pages#score'
end
