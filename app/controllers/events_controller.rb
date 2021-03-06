class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_event, only: [ :show, :edit, :update, :destroy, :register ]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @user = current_user
    @event.user = @user

    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  def register
    # @event.is_confirmed = true
    # @event.save
    # redirect_to event_request_path(@event)
    @booking_request = BookingRequest.new(user_id: current_user.id, event_id: params[:id])
    @booking_request.save
    redirect_to booking_requests_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :modality, :description, :photo, :address)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
