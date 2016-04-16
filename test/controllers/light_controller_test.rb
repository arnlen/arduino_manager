require 'test_helper'

class LightControllerTest < ActionController::TestCase
  test "should get on" do
    get :on
    assert_response(:success)
    assert_equal(JSON.parse(response.body)['light'], 'on')
  end

  test "should get off" do
    get :off
    assert_response(:success)
    assert_equal(JSON.parse(response.body)['light'], 'off')
  end

end
