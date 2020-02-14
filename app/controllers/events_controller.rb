class EventsController < ApplicationController

  before_action :authenticate_user!, only: [:attend_event]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @event_users = @event.users
  end

  def attend_event
      Userevent.create(user_id: current_user.id,event_id: params[:id])
      redirect_to event_path(params[:id])
  end

end
