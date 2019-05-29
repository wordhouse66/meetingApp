require "application_system_test_case"

class CalendsTest < ApplicationSystemTestCase
  setup do
    @calend = calends(:one)
  end

  test "visiting the index" do
    visit calends_url
    assert_selector "h1", text: "Calends"
  end

  test "creating a Calend" do
    visit calends_url
    click_on "New Calend"

    fill_in "Dater", with: @calend.dater
    click_on "Create Calend"

    assert_text "Calend was successfully created"
    click_on "Back"
  end

  test "updating a Calend" do
    visit calends_url
    click_on "Edit", match: :first

    fill_in "Dater", with: @calend.dater
    click_on "Update Calend"

    assert_text "Calend was successfully updated"
    click_on "Back"
  end

  test "destroying a Calend" do
    visit calends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calend was successfully destroyed"
  end
end
