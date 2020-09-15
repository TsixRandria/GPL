require 'test_helper'

class HomepageControllerTest < ActionDispatch::IntegrationTest
  test "should get mentions" do
    get homepage_mentions_url
    assert_response :success
  end

  test "should get conditions" do
    get homepage_conditions_url
    assert_response :success
  end

end
