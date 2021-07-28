# frozen_string_literal: true

# module of LeavesRequestTypesController
require 'test_helper'

class LeavesRequestTypesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get leaves_request_types_index_url
    assert_response :success
  end
end
