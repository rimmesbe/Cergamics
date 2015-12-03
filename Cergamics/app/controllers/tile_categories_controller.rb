class TileCategoriesController < ApplicationController
  def index
    @tile_categories = TileCategory.all
    erb
  end
end
