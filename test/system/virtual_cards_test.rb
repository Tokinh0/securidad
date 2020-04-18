require "application_system_test_case"

class VirtualCardsTest < ApplicationSystemTestCase
  setup do
    @virtual_card = virtual_cards(:one)
  end

  test "visiting the index" do
    visit virtual_cards_url
    assert_selector "h1", text: "Virtual Cards"
  end

  test "creating a Virtual card" do
    visit virtual_cards_url
    click_on "New Virtual Card"

    fill_in "Card", with: @virtual_card.card_id
    fill_in "Cvc", with: @virtual_card.cvc
    fill_in "Expiration date", with: @virtual_card.expiration_date
    fill_in "Number", with: @virtual_card.number
    click_on "Create Virtual card"

    assert_text "Virtual card was successfully created"
    click_on "Back"
  end

  test "updating a Virtual card" do
    visit virtual_cards_url
    click_on "Edit", match: :first

    fill_in "Card", with: @virtual_card.card_id
    fill_in "Cvc", with: @virtual_card.cvc
    fill_in "Expiration date", with: @virtual_card.expiration_date
    fill_in "Number", with: @virtual_card.number
    click_on "Update Virtual card"

    assert_text "Virtual card was successfully updated"
    click_on "Back"
  end

  test "destroying a Virtual card" do
    visit virtual_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Virtual card was successfully destroyed"
  end
end
