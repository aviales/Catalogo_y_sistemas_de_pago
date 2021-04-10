require "application_system_test_case"

class PhysicalsTest < ApplicationSystemTestCase
  setup do
    @physical = physicals(:one)
  end

  test "visiting the index" do
    visit physicals_url
    assert_selector "h1", text: "Physicals"
  end

  test "creating a Physical" do
    visit physicals_url
    click_on "New Physical"

    click_on "Create Physical"

    assert_text "Physical was successfully created"
    click_on "Back"
  end

  test "updating a Physical" do
    visit physicals_url
    click_on "Edit", match: :first

    click_on "Update Physical"

    assert_text "Physical was successfully updated"
    click_on "Back"
  end

  test "destroying a Physical" do
    visit physicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Physical was successfully destroyed"
  end
end
