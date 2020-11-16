require 'test_helper'

class PonstsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ponsts_index_url
    assert_response :success
  end

end
