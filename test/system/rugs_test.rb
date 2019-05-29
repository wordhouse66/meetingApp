require "application_system_test_case"

class RugsTest < ApplicationSystemTestCase
  setup do
    @rug = rugs(:one)
  end

  test "visiting the index" do
    visit rugs_url
    assert_selector "h1", text: "Rugs"
  end

  test "creating a Rug" do
    visit rugs_url
    click_on "New Rug"

    fill_in "Name", with: @rug.name
    click_on "Create Rug"

    assert_text "Rug was successfully created"
    click_on "Back"
  end

  test "updating a Rug" do
    visit rugs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @rug.name
    click_on "Update Rug"

    assert_text "Rug was successfully updated"
    click_on "Back"
  end

  test "destroying a Rug" do
    visit rugs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rug was successfully destroyed"
  end
end
