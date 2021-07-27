require "test_helper"

class AttendencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attendences_index_url
    assert_response :success
  end
end
