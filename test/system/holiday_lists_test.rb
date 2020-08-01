require "application_system_test_case"

class HolidayListsTest < ApplicationSystemTestCase
  setup do
    @holiday_list = holiday_lists(:one)
  end

  test "visiting the index" do
    visit holiday_lists_url
    assert_selector "h1", text: "Holiday Lists"
  end

  test "creating a Holiday list" do
    visit holiday_lists_url
    click_on "New Holiday List"

    fill_in "Date", with: @holiday_list.date
    fill_in "Name", with: @holiday_list.name
    click_on "Create Holiday list"

    assert_text "Holiday list was successfully created"
    click_on "Back"
  end

  test "updating a Holiday list" do
    visit holiday_lists_url
    click_on "Edit", match: :first

    fill_in "Date", with: @holiday_list.date
    fill_in "Name", with: @holiday_list.name
    click_on "Update Holiday list"

    assert_text "Holiday list was successfully updated"
    click_on "Back"
  end

  test "destroying a Holiday list" do
    visit holiday_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Holiday list was successfully destroyed"
  end
end
