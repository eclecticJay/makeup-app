class ClientsController < ApplicationController
	
  def index
    @current_client = Client.find(session[:client_id])
    @appointments = @current_client.appointments.order(:date)
    @picture = @current_client.pictures
    @artist = @current_client.makeup_artists.last
  end

  def messages
    @current_client = Client.find(session[:client_id])
    @client_messages = @current_client.messages
    render 'messages.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    client = Client.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    phone: params[:phone],
    zipcode:params[:zipcode],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
    )
    if client.save
      session[:client_id] = client.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/clients_home'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/clients/signup'
    end
  end
end

