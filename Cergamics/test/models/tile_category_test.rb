require 'test_helper'


class TileCategoryTest < ActiveSupport::TestCase
  def setup
    @floral = tile_categories(:floral_category)
  end

  should validate_presence_of(:title)

  test "valid with all attributes" do
    assert @floral.valid?, "Category is not valid"
  end

  test "should respond to tile_groups" do
    assert_respond_to @floral, :tile_groups
  end
end
