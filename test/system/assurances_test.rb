require "application_system_test_case"

class AssurancesTest < ApplicationSystemTestCase
  setup do
    @assurance = assurances(:one)
  end

  test "visiting the index" do
    visit assurances_url
    assert_selector "h1", text: "Assurances"
  end

  test "creating a Assurance" do
    visit assurances_url
    click_on "New Assurance"

    fill_in "Assurance", with: @assurance.assurance
    fill_in "Caution", with: @assurance.caution
    fill_in "Montant", with: @assurance.montant
    click_on "Create Assurance"

    assert_text "Assurance was successfully created"
    click_on "Back"
  end

  test "updating a Assurance" do
    visit assurances_url
    click_on "Edit", match: :first

    fill_in "Assurance", with: @assurance.assurance
    fill_in "Caution", with: @assurance.caution
    fill_in "Montant", with: @assurance.montant
    click_on "Update Assurance"

    assert_text "Assurance was successfully updated"
    click_on "Back"
  end

  test "destroying a Assurance" do
    visit assurances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assurance was successfully destroyed"
  end
end
