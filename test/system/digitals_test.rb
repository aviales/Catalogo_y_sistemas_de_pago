require "application_system_test_case"

class DigitalsTest < ApplicationSystemTestCase
  setup do
    @digital = digitals(:one)
  end

  test "visiting the index" do
    visit digitals_url
    assert_selector "h1", text: "Digitals"
  end

  test "creating a Digital" do
    visit digitals_url
    click_on "New Digital"

    click_on "Create Digital"

    assert_text "Digital was successfully created"
    click_on "Back"
  end

  test "updating a Digital" do
    visit digitals_url
    click_on "Edit", match: :first

    click_on "Update Digital"

    assert_text "Digital was successfully updated"
    click_on "Back"
  end

  test "destroying a Digital" do
    visit digitals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Digital was successfully destroyed"
  end
end
