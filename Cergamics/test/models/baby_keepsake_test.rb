require 'test_helper'

class BabyKeepsakeTest < ActiveSupport::TestCase
  def setup
    @keepsake = baby_keepsakes(:babyboy)
  end

  should validate_presence_of(:name)

  test "valid with all attributes" do
    assert @keepsake.valid?, "Keepsake is not valid"
  end
end
