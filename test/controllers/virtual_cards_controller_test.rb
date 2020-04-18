require 'test_helper'

class VirtualCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @virtual_card = virtual_cards(:one)
  end

  test "should get index" do
    get virtual_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_virtual_card_url
    assert_response :success
  end

  test "should create virtual_card" do
    assert_difference('VirtualCard.count') do
      post virtual_cards_url, params: { virtual_card: { card_id: @virtual_card.card_id, cvc: @virtual_card.cvc, expiration_date: @virtual_card.expiration_date, number: @virtual_card.number } }
    end

    assert_redirected_to virtual_card_url(VirtualCard.last)
  end

  test "should show virtual_card" do
    get virtual_card_url(@virtual_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_virtual_card_url(@virtual_card)
    assert_response :success
  end

  test "should update virtual_card" do
    patch virtual_card_url(@virtual_card), params: { virtual_card: { card_id: @virtual_card.card_id, cvc: @virtual_card.cvc, expiration_date: @virtual_card.expiration_date, number: @virtual_card.number } }
    assert_redirected_to virtual_card_url(@virtual_card)
  end

  test "should destroy virtual_card" do
    assert_difference('VirtualCard.count', -1) do
      delete virtual_card_url(@virtual_card)
    end

    assert_redirected_to virtual_cards_url
  end
end
