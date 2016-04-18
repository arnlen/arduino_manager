require 'test_helper'

class LightControllerTest < ActionController::TestCase
  test "should get on" do
    get :on
    assert_response(:success)
  end

  test "should get off" do
    get :off
    assert_response(:success)
  end

end
