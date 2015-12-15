require 'test_helper'

class FinishTest < ActiveSupport::TestCase
  def setup
    @finish_tile = finishes(:tile_finish)
    @finish_plaque = finishes(:house_plaque_finish)
    @finish_number = finishes(:house_number_finish)
  end

  should belong_to(:finished_item)

  test "should be valid with all attributes" do
    assert @finish_tile.valid?, "Finish is not valid"
  end

  test "should respond to finished_item" do
    assert_respond_to @finish_tile, :finished_item
  end
end
