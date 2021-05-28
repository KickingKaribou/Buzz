class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @field = Field.find(params[:field_id])
    authorize @field
  end

  def create
    @booking = Booking.new(set_booking_params)
    @field = Field.find(params[:field_id])
    @booking.field = @field
    @booking.user = current_user
    # @booking.status = "pending"
    authorize @booking
    authorize @field
    if @booking.save
      redirect_to field_path(@field)
    else
      redirect_to field_path(@field)
    end
  end




  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to dashboard_index_path
  end



  private
  def set_booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end

end
