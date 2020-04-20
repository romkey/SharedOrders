require 'test_helper'

class AvailableItemsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @available_item = available_items(:one)
    sign_in User.find 1
  end

  test "should get index" do
    get available_items_url
    assert_response :success
  end

  test "should get new" do
    get new_available_item_url
    assert_response :success
  end

  test "should create available_item" do
    assert_difference('AvailableItem.count') do
      post available_items_url, params: { available_item: { name: @available_item.name, price: @available_item.price, price_per_unit: @available_item.price_per_unit, source_id: @available_item.source_id, unit: @available_item.unit } }
    end

    assert_redirected_to available_item_url(AvailableItem.last)
  end

  test "should show available_item" do
    get available_item_url(@available_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_available_item_url(@available_item)
    assert_response :success
  end

  test "should update available_item" do
    patch available_item_url(@available_item), params: { available_item: { name: @available_item.name, price: @available_item.price, price_per_unit: @available_item.price_per_unit, source_id: @available_item.source_id, unit: @available_item.unit } }
    assert_redirected_to available_item_url(@available_item)
  end

  test "should destroy available_item" do
    assert_difference('AvailableItem.count', -1) do
      delete available_item_url(@available_item)
    end

    assert_redirected_to available_items_url
  end
end
