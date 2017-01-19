Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Home
  get '/home' => 'home#index'
  # MakeupArtist
  get '/artists_home' => 'makeup_artists#index'
  get '/artists_inbox' => 'makeup_artists#messages'
  get '/makeup_artists/signup' => 'makeup_artists#new'
	post '/makeup_artists' => 'makeup_artists#create'
  #Appointments
  get '/appointments' => 'appointments#new'
  post '/appointments' => 'appointments#create'
  patch '/appointments/:id' => 'appointments#update'
  # Client
  get '/clients_home' => 'clients#index'
  get '/clients_inbox' => 'clients#messages'
  get '/clients/signup' => 'clients#new'
	post '/clients' => 'clients#create'
  # Login 
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'
  #Message
  get '/messages/new' => 'messages#new'
  get '/messages/:id' => 'messages#show'
  post '/messages' => 'messages#create'
  #Inventory 
  
end
