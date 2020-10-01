require 'test_helper'

class BreakfastCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @breakfast_card = breakfast_cards(:one)
  end

  test "should get index" do
    get breakfast_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_breakfast_card_url
    assert_response :success
  end

  test "should create breakfast_card" do
    assert_difference('BreakfastCard.count') do
      post breakfast_cards_url, params: { breakfast_card: {  } }
    end

    assert_redirected_to breakfast_card_url(BreakfastCard.last)
  end

  test "should show breakfast_card" do
    get breakfast_card_url(@breakfast_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_breakfast_card_url(@breakfast_card)
    assert_response :success
  end

  test "should update breakfast_card" do
    patch breakfast_card_url(@breakfast_card), params: { breakfast_card: {  } }
    assert_redirected_to breakfast_card_url(@breakfast_card)
  end

  test "should destroy breakfast_card" do
    assert_difference('BreakfastCard.count', -1) do
      delete breakfast_card_url(@breakfast_card)
    end

    assert_redirected_to breakfast_cards_url
  end
end
