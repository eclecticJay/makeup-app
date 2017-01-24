class MakeupsController < ApplicationController
  def index
    @current_makeup_artist = MakeupArtist.find(session[:makeup_artist_id])
    @items = Makeup.all
  end

  def new
    render 'new.html.erb'
  end

  def show
    @makeup = Makeup.find_by(id: params[:id] )
    render 'show.html.erb'
  end

  def create
    makeups = Makeup.create( 
      makeup_items: params["makeup_items"],
      makeup_tools: params["makeup_tools"])
      redirect_to '/makeups/new' 
  end

  def destroy
    #grab the right product
    @makeup = Makeup.find_by(id: params[:id] )
    #kill it 
    @makeup.destroy
    # render 'destory.html.erb'
    flash[:danger] = "Remove from list"
    redirect_to "/makeups"
  end
end
