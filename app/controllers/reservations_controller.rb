class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all.where(renter: current_user)
  end

  def create
    @instrument = Instrument.find(params[:instrument_id])
    # raise
    @reservation = Reservation.new(reservation_params)
    @reservation.instrument = @instrument
    @reservation.renter = current_user
    @number_of_days = @reservation.end_date - @reservation.start_date
    @reservation.total_price =  @number_of_days * @reservation.instrument.price_per_day
    @reservation.status = "Pending"
    if @reservation.save
      redirect_to reservations_path
    else
      flash[:alert] = @reservation.errors.full_messages.join "\n"
      render "instruments/show"
    end
  end

  def cancel
    @reservation = Reservation.find(params[:id])
		@reservation.status = "Cancelled"
		if @reservation.save!
			redirect_to reservations_path
		end
	end


  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :instrument_id, :renter_id)
  end
end
