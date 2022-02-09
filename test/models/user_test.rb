require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user comes from factory" do
    user = build(:user)
    assert_equal(user.name, 'Name')
  end

  test "user count starts at zero" do
    user = create(:user)
    assert_equal(user.count, 0)
  end

  test "passing a date" do
    user = create(:user, birthdate: '1998-12-26')
    date = Date.new(1998, 12, 26)
    assert_equal(user.birthdate, date)
  end
end
