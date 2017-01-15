class SessionsController < ApplicationController
	  def new
    render 'new.html.erb'
  end

  def create
    if client = Client.find_by(email: params[:email])
      if client && client.authenticate(params[:password])
        session[:client_id] = client.id
        flash[:success] = 'Successfully logged in!'
        redirect_to '/clientshome'
      else
        flash[:warning] = 'Invalid email or password!'
        redirect_to '/login'
      end
    end
    if makeup_artist = MakeupArtist.find_by(email: params[:email])
      if makeup_artist && makeup_artist.authenticate(params[:password])
        session[:makeup_artist_id] = makeup_artist.id
        flash[:success] = 'Successfully logged in!'
        redirect_to '/artistshome'
      else
        flash[:warning] = 'Invalid email or password!'
        redirect_to '/login'
      end
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end
end
