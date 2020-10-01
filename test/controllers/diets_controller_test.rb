require 'test_helper'

class DietsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get diets_show_url
    assert_response :success
  end

end
