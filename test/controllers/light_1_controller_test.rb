require 'test_helper'

class Light1ControllerTest < ActionController::TestCase
  test "should get on" do
    get :on
    assert_response(:success)
    assert_equal(JSON.parse(response.body)['light_1'], 'on')
  end

  test "should get off" do
    get :off
    assert_response(:success)
    assert_equal(JSON.parse(response.body)['light_1'], 'off')
  end

end
