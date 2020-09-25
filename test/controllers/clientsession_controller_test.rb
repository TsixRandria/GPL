require 'test_helper'

class ClientsessionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clientsession_index_url
    assert_response :success
  end

end
