require "test_helper"

class RfcGeneratorControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get rfc_generator_create_url
    assert_response :success
  end
end
