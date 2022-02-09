require "test_helper"

class RfcGeneratorTest < ActiveSupport::TestCase
  test "it initializes a generator" do
    user = build(:user)
    rfc = RfcGenerator.new(user: user)
    result = rfc.basic_form
    assert_equal(rfc.to_s, 'FAMN851021')
  end
end
