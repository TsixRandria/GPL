require 'test_helper'

class ArticleAeroportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get article_aeroport_index_url
    assert_response :success
  end

end
