class Owner::ReservationsController < ApplicationController
	before_action :set_parameters, only: [:accept, :decline]

	def index
		@instruments = Instrument.where(owner: current_user)
	end

	def accept
		@reservation.status = "Accepted"
		if @reservation.save!
			redirect_to owner_reservations_path
		end
	end

	def decline
		@reservation.status = "Declined"
		if @reservation.save!
			redirect_to owner_reservations_path
		end
	end

	private

	def set_parameters
		@reservation = Reservation.find(params[:id])
	end
end
