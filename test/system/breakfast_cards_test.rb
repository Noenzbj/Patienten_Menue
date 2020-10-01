require "application_system_test_case"

class BreakfastCardsTest < ApplicationSystemTestCase
  setup do
    @breakfast_card = breakfast_cards(:one)
  end

  test "visiting the index" do
    visit breakfast_cards_url
    assert_selector "h1", text: "Breakfast Cards"
  end

  test "creating a Breakfast card" do
    visit breakfast_cards_url
    click_on "New Breakfast Card"

    click_on "Create Breakfast card"

    assert_text "Breakfast card was successfully created"
    click_on "Back"
  end

  test "updating a Breakfast card" do
    visit breakfast_cards_url
    click_on "Edit", match: :first

    click_on "Update Breakfast card"

    assert_text "Breakfast card was successfully updated"
    click_on "Back"
  end

  test "destroying a Breakfast card" do
    visit breakfast_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Breakfast card was successfully destroyed"
  end
end
