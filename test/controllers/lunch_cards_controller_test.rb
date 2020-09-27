require 'test_helper'

class LunchCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lunch_cards_index_url
    assert_response :success
  end

end
