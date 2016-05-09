require 'test_helper'

class SensorsControllerTest < ActionController::TestCase
  test "should get temperature" do
    get :temperature
    assert_response :success
  end

end
