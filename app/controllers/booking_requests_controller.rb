class BookingRequestsController < ApplicationController
  before_action :set_booking, only: [ :show, :destroy ]

  def index
    @bookings = BookingRequest.all
  end

  def show
  end

  def destroy
    @booking.destroy
    redirect_to booking_requests_path
  end

  private

  def set_booking
    @booking = BookingRequest.find(params[:id])
  end
end
