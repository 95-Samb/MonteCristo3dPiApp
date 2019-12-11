require "application_system_test_case"

class PiEstimatorsTest < ApplicationSystemTestCase
  setup do
    @pi_estimator = pi_estimators(:one)
  end

  test "visiting the index" do
    visit pi_estimators_url
    assert_selector "h1", text: "Pi Estimators"
  end

  test "creating a Pi estimator" do
    visit pi_estimators_url
    click_on "New Pi Estimator"

    click_on "Create Pi estimator"

    assert_text "Pi estimator was successfully created"
    click_on "Back"
  end

  test "updating a Pi estimator" do
    visit pi_estimators_url
    click_on "Edit", match: :first

    click_on "Update Pi estimator"

    assert_text "Pi estimator was successfully updated"
    click_on "Back"
  end

  test "destroying a Pi estimator" do
    visit pi_estimators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pi estimator was successfully destroyed"
  end
end
