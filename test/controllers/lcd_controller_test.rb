require 'test_helper'

class LcdControllerTest < ActionController::TestCase
  test "should get write" do
    get :write
    assert_response :success
  end

end
