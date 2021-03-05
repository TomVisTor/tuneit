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

  def edit
    @instrument = Instrument.find(params[:id])
  end

  def update
    @instrument = Instrument.find(params[:id])
    if @instrument.update(instrument_params)
  		redirect_to owner_instruments_path
    else
      render :edit
    end
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy(instrument_params)

    redirect_to owner_instruments_path
  end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :family, :availability, :description, :photo, :price_per_day)
  end
end
