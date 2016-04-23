require 'test_helper'

class ScreenControllerTest < ActionController::TestCase
  test "should get write" do
    get :write
    assert_response :success
  end

end
