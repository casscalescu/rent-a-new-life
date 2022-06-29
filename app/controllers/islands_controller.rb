class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @islands = Island.all
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def island_params
    params.require(:island).permit(:name, :location, :price_per_night, :description, :longitude, :latitude, :photos)
  end
end
