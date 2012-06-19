require 'test_helper'

class HowitworkControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
