require "application_system_test_case"

class OneclicksTest < ApplicationSystemTestCase
  setup do
    @oneclick = oneclicks(:one)
  end

  test "visiting the index" do
    visit oneclicks_url
    assert_selector "h1", text: "Oneclicks"
  end

  test "creating a Oneclick" do
    visit oneclicks_url
    click_on "New Oneclick"

    click_on "Create Oneclick"

    assert_text "Oneclick was successfully created"
    click_on "Back"
  end

  test "updating a Oneclick" do
    visit oneclicks_url
    click_on "Edit", match: :first

    click_on "Update Oneclick"

    assert_text "Oneclick was successfully updated"
    click_on "Back"
  end

  test "destroying a Oneclick" do
    visit oneclicks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oneclick was successfully destroyed"
  end
end
