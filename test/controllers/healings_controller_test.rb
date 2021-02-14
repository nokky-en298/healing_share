require 'test_helper'

class HealingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get healings_index_url
    assert_response :success
  end

end
