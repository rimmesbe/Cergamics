class BabyKeepsakesController < ApplicationController

  def index
    @baby_keepsakes = BabyKeepsake.all
  end
end
