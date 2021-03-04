class Owner::InstrumentsController < ApplicationController
  def index
  	@instruments = Instrument.where(owner: current_user)
  end

  def new
    @instrument = Instrument.new
    @owner = current_user
  end

  def create
  	instrument = Instrument.new(instrument_params)
  	instrument.owner = current_user
  	if instrument.save!
  		redirect_to owner_instruments_path
  	else
  		render :new
  	end
  end

  def destroy
  end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :family, :availability, :description, :photo, :price_per_day, :owner_id)
  end
end
