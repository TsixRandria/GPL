require 'test_helper'

class PortControllerTest < ActionDispatch::IntegrationTest
  test "should get port" do
    get port_port_url
    assert_response :success
  end

end
