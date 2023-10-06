require 'test_helper'

class ConsultaUsosControllerTest < ActionController::TestCase
  test "should get usuario" do
    get :usuario
    assert_response :success
  end

end
