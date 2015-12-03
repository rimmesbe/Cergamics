class HouseNumberTilesController < ApplicationController

  def index
    @house_number_tiles = HouseNumberTile.all
  end
end
