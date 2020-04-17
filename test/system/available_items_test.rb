require "application_system_test_case"

class AvailableItemsTest < ApplicationSystemTestCase
  setup do
    @available_item = available_items(:one)
  end

  test "visiting the index" do
    visit available_items_url
    assert_selector "h1", text: "Available Items"
  end

  test "creating a Available item" do
    visit available_items_url
    click_on "New Available Item"

    fill_in "Name", with: @available_item.name
    fill_in "Price", with: @available_item.price
    fill_in "Price per unit", with: @available_item.price_per_unit
    fill_in "Source", with: @available_item.source_id
    fill_in "Unit", with: @available_item.unit
    click_on "Create Available item"

    assert_text "Available item was successfully created"
    click_on "Back"
  end

  test "updating a Available item" do
    visit available_items_url
    click_on "Edit", match: :first

    fill_in "Name", with: @available_item.name
    fill_in "Price", with: @available_item.price
    fill_in "Price per unit", with: @available_item.price_per_unit
    fill_in "Source", with: @available_item.source_id
    fill_in "Unit", with: @available_item.unit
    click_on "Update Available item"

    assert_text "Available item was successfully updated"
    click_on "Back"
  end

  test "destroying a Available item" do
    visit available_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Available item was successfully destroyed"
  end
end
