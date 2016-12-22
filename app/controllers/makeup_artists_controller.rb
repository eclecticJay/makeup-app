class MakeupArtistsController < ApplicationController
	
  def index
    @makeup_artists = MakeupArtist.all 
  end

  def new
    render 'new.html.erb'
  end

  def create
    makeup_artist = MakeupArtist.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      zipcode:params[:zipcode],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if makeup_artist.save
      session[:makeup_artist_id] = makeup_artist.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/artistshome'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/makeup_artist/signup'
    end
  end
end

