require 'test_helper'

class TesinaControllerTest < ActionController::TestCase
  test "should get paginaPrincipal" do
    get :paginaPrincipal
    assert_response :success
  end

end
