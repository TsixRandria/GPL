require 'test_helper'

class HomeAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_admin_index_url
    assert_response :success
  end

  test "should get dashboard" do
    get home_admin_dashboard_url
    assert_response :success
  end

end
