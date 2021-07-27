require "test_helper"

class RegularizationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get regularizations_index_url
    assert_response :success
  end
end
