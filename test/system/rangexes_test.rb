require "application_system_test_case"

class RangexesTest < ApplicationSystemTestCase
  setup do
    @rangex = rangexes(:one)
  end

  test "visiting the index" do
    visit rangexes_url
    assert_selector "h1", text: "Rangexes"
  end

  test "creating a Rangex" do
    visit rangexes_url
    click_on "New Rangex"

    fill_in "Finish", with: @rangex.finish
    fill_in "Start", with: @rangex.start
    click_on "Create Rangex"

    assert_text "Rangex was successfully created"
    click_on "Back"
  end

  test "updating a Rangex" do
    visit rangexes_url
    click_on "Edit", match: :first

    fill_in "Finish", with: @rangex.finish
    fill_in "Start", with: @rangex.start
    click_on "Update Rangex"

    assert_text "Rangex was successfully updated"
    click_on "Back"
  end

  test "destroying a Rangex" do
    visit rangexes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rangex was successfully destroyed"
  end
end
