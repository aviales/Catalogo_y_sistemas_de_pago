require "application_system_test_case"

class WebpaysTest < ApplicationSystemTestCase
  setup do
    @webpay = webpays(:one)
  end

  test "visiting the index" do
    visit webpays_url
    assert_selector "h1", text: "Webpays"
  end

  test "creating a Webpay" do
    visit webpays_url
    click_on "New Webpay"

    click_on "Create Webpay"

    assert_text "Webpay was successfully created"
    click_on "Back"
  end

  test "updating a Webpay" do
    visit webpays_url
    click_on "Edit", match: :first

    click_on "Update Webpay"

    assert_text "Webpay was successfully updated"
    click_on "Back"
  end

  test "destroying a Webpay" do
    visit webpays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Webpay was successfully destroyed"
  end
end
