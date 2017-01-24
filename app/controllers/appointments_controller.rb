class AppointmentsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def show
    @appointment = Appointment.find_by( id: params["id"])
     @current_client = Client.find(session[:client_id])
    render 'show.html.erb'
  end

  def create
    appointment = Appointment.create(
      makeup_artist_id: params[:makeup_artist][:makeup_artist_id],
      location: params[:location], 
      date: params[:date],
      time: params[:time],
      client_id: current_user.id,
      confirmation: "pending"
      )
    p appointment.errors.full_messages
    redirect_to '/clients_home'
  end

  def update
    @appointment = Appointment.find_by( id: params["id"])
    @appointment.update(confirmation: params[:confirmation])
    redirect_to '/artists_home'
  end
end
