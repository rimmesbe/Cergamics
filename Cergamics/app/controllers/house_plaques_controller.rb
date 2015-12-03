class HousePlaquesController < ApplicationController

  def index
    @house_plaques = HousePlaque.all
  end

end
