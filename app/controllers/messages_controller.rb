class MessagesController < ApplicationController
  
  def show
   if(session[:makeup_artist_id])
      @current_artist = MakeupArtist.find(session[:makeup_artist_id])
    end
    if(session[:client_id])
      @current_client = Client.find(session[:client_id])
    end
      render 'show.html.erb'
  end
    
  def new
    if(session[:makeup_artist_id])
      @current_artist = MakeupArtist.find(session[:makeup_artist_id])
    end
    if(session[:client_id])
      @current_client = Client.find(session[:client_id])
    end
      render 'new.html.erb'
  end

  def create
    p "this is where this text is "
    p params[:text][0]
    if(session[:makeup_artist_id])
      if params[:client].class != String
        the_client_id = params[:client][:client_id]
      else
        the_client_id = params[:client]
      end
      @current_artist = MakeupArtist.find(session[:makeup_artist_id])
      @message = Message.new(
      makeup_artist_id: (session[:makeup_artist_id]),
      client_id: the_client_id,
      text: params[:text][0]
    )
    @message.save
    end
    if(session[:client_id])
      if params[:makeup_artist].class != String
        the_makeup_artist_id = params[:makeup_artist][:makeup_artist_id]
      else
        the_makeup_artist_id = params[:makeup_artist]
      end
      @current_client = Client.find(session[:client_id])
      @message = Message.new(
      makeup_artist_id: the_makeup_artist_id,
      client_id: (session[:client_id]) ,
      text: params[:text][0]
    )
    @message.save
    end
    if(session[:makeup_artist_id])
    redirect_to '/artists_inbox'
    end
    if(session[:client_id])
    redirect_to '/clients_inbox'
    end
  end
end


#need to add show create and new message method 
#need also add view for the makeup artist 
#need to make dynamic depending who is log in  