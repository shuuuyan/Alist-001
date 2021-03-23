require 'test_helper'

class AlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alists_index_url
    assert_response :success
  end

end
