require "application_system_test_case"

class SharedOrdersTest < ApplicationSystemTestCase
  setup do
    @shared_order = shared_orders(:one)
  end

  test "visiting the index" do
    visit shared_orders_url
    assert_selector "h1", text: "Shared Orders"
  end

  test "creating a Shared order" do
    visit shared_orders_url
    click_on "New Shared Order"

    fill_in "Ends", with: @shared_order.ends
    fill_in "Name", with: @shared_order.name
    fill_in "Source", with: @shared_order.source_id
    fill_in "Starts", with: @shared_order.starts
    click_on "Create Shared order"

    assert_text "Shared order was successfully created"
    click_on "Back"
  end

  test "updating a Shared order" do
    visit shared_orders_url
    click_on "Edit", match: :first

    fill_in "Ends", with: @shared_order.ends
    fill_in "Name", with: @shared_order.name
    fill_in "Source", with: @shared_order.source_id
    fill_in "Starts", with: @shared_order.starts
    click_on "Update Shared order"

    assert_text "Shared order was successfully updated"
    click_on "Back"
  end

  test "destroying a Shared order" do
    visit shared_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shared order was successfully destroyed"
  end
end
