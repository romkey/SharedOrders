require 'test_helper'

class SharedOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shared_order = shared_orders(:one)
  end

  test "should get index" do
    get shared_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_shared_order_url
    assert_response :success
  end

  test "should create shared_order" do
    assert_difference('SharedOrder.count') do
      post shared_orders_url, params: { shared_order: { ends: @shared_order.ends, name: @shared_order.name, source_id: @shared_order.source_id, starts: @shared_order.starts } }
    end

    assert_redirected_to shared_order_url(SharedOrder.last)
  end

  test "should show shared_order" do
    get shared_order_url(@shared_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_shared_order_url(@shared_order)
    assert_response :success
  end

  test "should update shared_order" do
    patch shared_order_url(@shared_order), params: { shared_order: { ends: @shared_order.ends, name: @shared_order.name, source_id: @shared_order.source_id, starts: @shared_order.starts } }
    assert_redirected_to shared_order_url(@shared_order)
  end

  test "should destroy shared_order" do
    assert_difference('SharedOrder.count', -1) do
      delete shared_order_url(@shared_order)
    end

    assert_redirected_to shared_orders_url
  end
end
