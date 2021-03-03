class Owner::ReservationsController < ApplicationController
	before_action :set_parameters, only: [:accept, :decline]

	def index
		@reservations = Reservation.all
		# @reservation = Reservation.new
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
