class TileCategoriesController < ApplicationController

  def index
    @tile_categories = TileCategory.all
  end

  def show
    @tile_category = TileCategory.find_by(id: params[:id])
  end
end
