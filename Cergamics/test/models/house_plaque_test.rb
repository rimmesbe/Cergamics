require 'test_helper'

class HousePlaqueTest < ActiveSupport::TestCase
  def setup
    @house_plaque = house_plaques(:bird_plaque)
  end

  should validate_presence_of(:name)
  should have_many(:finishes)

  test "valid with all attributes" do
    assert @house_plaque.valid?, "Plaque is not valid"
  end

  test "should respond to finishes" do
    assert_respond_to @house_plaque, :finishes
  end
end
