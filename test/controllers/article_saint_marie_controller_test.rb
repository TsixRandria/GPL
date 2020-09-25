require 'test_helper'

class ArticleSaintMarieControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get article_saint_marie_index_url
    assert_response :success
  end

end
