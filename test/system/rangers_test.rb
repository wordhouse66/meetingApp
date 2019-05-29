require "application_system_test_case"

class RangersTest < ApplicationSystemTestCase
  setup do
    @ranger = rangers(:one)
  end

  test "visiting the index" do
    visit rangers_url
    assert_selector "h1", text: "Rangers"
  end

  test "creating a Ranger" do
    visit rangers_url
    click_on "New Ranger"

    fill_in "Start", with: @ranger.start
    click_on "Create Ranger"

    assert_text "Ranger was successfully created"
    click_on "Back"
  end

  test "updating a Ranger" do
    visit rangers_url
    click_on "Edit", match: :first

    fill_in "Start", with: @ranger.start
    click_on "Update Ranger"

    assert_text "Ranger was successfully updated"
    click_on "Back"
  end

  test "destroying a Ranger" do
    visit rangers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ranger was successfully destroyed"
  end
end
