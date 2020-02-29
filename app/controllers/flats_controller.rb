class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end


private
def flat_params
  params.require(:flat).permit(:name, :address, :description)
  end
end
