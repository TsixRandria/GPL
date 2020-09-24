require 'test_helper'

class AeroportControllerTest < ActionDispatch::IntegrationTest
  test "should get aeroport" do
    get aeroport_aeroport_url
    assert_response :success
  end

end
