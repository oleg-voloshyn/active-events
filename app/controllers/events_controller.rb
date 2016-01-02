class EventsController < ApplicationController
  expose(:events) { Event.all }
  expose(:event, ancestor: :events)

  private

  def event_params
    params.require(:event).permit!
  end
end
