class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
     if session[:client_id]
      @current_client ||= Client.find_by(id: session[:client_id]) 
     elsif session[:makeup_artist_id]
      @current_makeup_artist ||= MakeupArtist.find_by(id: session[:makeup_artist_id]) 
    end 
  end
  helper_method :current_user
 
  def authenticate_user!
    redirect_to '/login' unless current_user
  end
end


  

  