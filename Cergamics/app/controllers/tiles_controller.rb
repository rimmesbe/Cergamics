class TilesController < ApplicationController

  def show
    @tile = Tile.find_by(id: params[:id])
  end
end
