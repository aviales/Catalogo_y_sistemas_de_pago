require "application_system_test_case"

class StripesTest < ApplicationSystemTestCase
  setup do
    @stripe = stripes(:one)
  end

  test "visiting the index" do
    visit stripes_url
    assert_selector "h1", text: "Stripes"
  end

  test "creating a Stripe" do
    visit stripes_url
    click_on "New Stripe"

    click_on "Create Stripe"

    assert_text "Stripe was successfully created"
    click_on "Back"
  end

  test "updating a Stripe" do
    visit stripes_url
    click_on "Edit", match: :first

    click_on "Update Stripe"

    assert_text "Stripe was successfully updated"
    click_on "Back"
  end

  test "destroying a Stripe" do
    visit stripes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stripe was successfully destroyed"
  end
end
