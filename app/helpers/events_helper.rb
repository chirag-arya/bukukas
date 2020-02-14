module EventsHelper

  def is_event_passed
    if(Date.today < @event.event_date)
      return true
    end
  end

  def is_attended
    record = Userevent.where(user_id: current_user.id, event_id: @event.id).count
    if(record > 0)
      return true
    else
      return false
    end
  end

end
