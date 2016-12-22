class ClientsController < ApplicationController
	
  def index
    
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
      redirect_to '/clientshome'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/clients/signup'
    end
  end
end

