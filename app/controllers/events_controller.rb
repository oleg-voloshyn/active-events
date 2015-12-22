class EventsController < ApplicationController
  def index
    @events = Event.all
    @events_by_date = @events.group_by(&:published_on)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event, notice: 'Created event.'
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(event_params)
  end

  private

  def event_params
    params.require(:event).permit!
  end
end
