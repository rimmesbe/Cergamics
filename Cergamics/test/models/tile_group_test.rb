require 'test_helper'

class TileGroupTest < ActiveSupport::TestCase
  def setup
    @floral_group = tile_groups(:floral_group)
  end

  should validate_presence_of(:name)
  should belong_to(:tile_category)
  should have_many(:tiles)

  test "valid with all attributes" do
    assert @floral_group.valid?, "Group is not valid"
  end

  test "should respond to tiles" do
    assert_respond_to @floral_group, :tiles
  end

  test "should respond to tile_category" do
    assert_respond_to @floral_group, :tile_category
  end
end
