require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get camera" do
    get :camera
    assert_response :success
  end

end
