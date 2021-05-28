class DashboardController < ApplicationController

  def index
    @bookings = Booking.where(user:current_user)
    @bookingss = policy_scope(Booking).order(created_at: :desc)
  end
end
