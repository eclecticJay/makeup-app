class InventoriesController < ApplicationController
  
  def index
    @current_makeup_artist = MakeupArtist.find(session[:makeup_artist_id])
    @items = @current_makeup_artist.makeups
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def destroy
    
  end

end
