class BabyKeepsakesController < ApplicationController

  def index
    @baby_keepsakes = BabyKeepsakes.all
  end
end
