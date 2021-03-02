class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show]

  def index
  end

  def show
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:name, :family, :availability, :description, :photo, :price_per_day, :owner_id)
  end
end
