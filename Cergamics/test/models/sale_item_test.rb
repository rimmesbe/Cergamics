require 'test_helper'

class SaleItemTest < ActiveSupport::TestCase
  def setup
    @sale_item = sale_items(:saleitem)
  end

  should validate_presence_of(:name)

  test "valid with all attributes" do
    assert @sale_item.valid?, "Sale item is not valid"
  end
end
