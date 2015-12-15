require 'test_helper'

class TileTest < ActiveSupport::TestCase
  def setup
    @tile = tiles(:tulip)
  end

  should validate_presence_of(:name)
  should have_many(:finishes)
  should belong_to(:tile_group)

  test "valid with all attributes" do
    assert @tile.valid?, "Tile is not valid"
  end

  test "should respond to tile_group" do
    assert_respond_to @tile, :tile_group
  end

  test "should respond to finishes" do
    assert_respond_to @tile, :finishes
  end
end
