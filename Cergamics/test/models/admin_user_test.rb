require 'test_helper'

class AdminUserTest < ActiveSupport::TestCase
  def setup
    @admin = admin_users(:test_admin)
  end

  should validate_presence_of(:email)
  should_not allow_value("blah").for(:email)
  should allow_value("a@b.com").for(:email)

  test "valid with all attributes" do
    assert @admin.valid?, "Admin is not valid"
  end
end
