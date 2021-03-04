class Owner::ReservationsController < ApplicationController
	before_action :set_parameters, only: [:accept, :decline]

	def index
		# @reservations = Reservation.all
		@instruments = Instrument.where(owner: current_user)
		@reservations = []
		@instruments.each do |instrument|
			@reservations << instrument.reservations
		end
	end

	def accept
		# redirect_to reservations_path
	end

	def decline

	end

	private

	def set_parameters
		@reservation = Reservation.find(params[:id])
	end
end
