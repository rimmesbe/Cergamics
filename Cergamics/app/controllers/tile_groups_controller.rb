class TileGroupsController < ApplicationController

  def show
    @tile_group = TileGroup.find_by(id: params[:id])
  end
end
