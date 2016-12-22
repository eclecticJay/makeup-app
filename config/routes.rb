Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Home
  get '/home' => 'home#index'
  # MakeupArtist
  get '/artistshome' => 'makeup_artists#index'
  get '/makeup_artists/signup' => 'makeup_artists#new'
	post '/makeup_artists' => 'makeup_artists#create'	
  # Client
  get '/clientshome' => 'clients#index'
  get '/clients/signup' => 'clients#new'
	post '/clients' => 'clients#create'
  # Login 
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'
end
