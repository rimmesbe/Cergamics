require 'test_helper'

class HouseNumberTileTest < ActiveSupport::TestCase
  def setup
    @house_number = house_number_tiles(:flower_house_number)
  end

  should validate_presence_of(:name)
  should have_many(:finishes)

  test "valid with all attributes" do
    assert @house_number.valid?, "House Number is not valid"
  end

  test "should respond to finishes" do
    assert_respond_to @house_number, :finishes
  end
end
