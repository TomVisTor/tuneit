class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show]

  def index
    if params[:query].present?
      # Plain ActiveRecord
      sql_query = <<~SQL
        instruments.name @@ :query
        OR instruments.family @@ :query
        OR users.address @@ :query
      SQL
      @instruments = Instrument.joins(:owner).where(sql_query, query: "%#{params[:query]}%")
    else
      @instruments = Instrument.all
    end
  end

  def show
    @reservation = Reservation.new
  end


  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  # def instrument_params
  #   params.require(:instrument).permit(:name, :family, :availability, :description, :photo, :price_per_day, :owner_id)
  # end
end
