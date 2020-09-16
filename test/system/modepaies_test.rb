require "application_system_test_case"

class ModepaiesTest < ApplicationSystemTestCase
  setup do
    @modepaie = modepaies(:one)
  end

  test "visiting the index" do
    visit modepaies_url
    assert_selector "h1", text: "Modepaies"
  end

  test "creating a Modepaie" do
    visit modepaies_url
    click_on "New Modepaie"

    fill_in "Combinaison", with: @modepaie.combinaison
    fill_in "Datedebut", with: @modepaie.datedebut
    fill_in "Datefin", with: @modepaie.datefin
    fill_in "Prixbs", with: @modepaie.prixbs
    fill_in "Prixhs", with: @modepaie.prixhs
    fill_in "Prixms", with: @modepaie.prixms
    fill_in "Rubrique", with: @modepaie.rubrique
    fill_in "Status", with: @modepaie.status
    fill_in "Tarifjour", with: @modepaie.tarifjour
    click_on "Create Modepaie"

    assert_text "Modepaie was successfully created"
    click_on "Back"
  end

  test "updating a Modepaie" do
    visit modepaies_url
    click_on "Edit", match: :first

    fill_in "Combinaison", with: @modepaie.combinaison
    fill_in "Datedebut", with: @modepaie.datedebut
    fill_in "Datefin", with: @modepaie.datefin
    fill_in "Prixbs", with: @modepaie.prixbs
    fill_in "Prixhs", with: @modepaie.prixhs
    fill_in "Prixms", with: @modepaie.prixms
    fill_in "Rubrique", with: @modepaie.rubrique
    fill_in "Status", with: @modepaie.status
    fill_in "Tarifjour", with: @modepaie.tarifjour
    click_on "Update Modepaie"

    assert_text "Modepaie was successfully updated"
    click_on "Back"
  end

  test "destroying a Modepaie" do
    visit modepaies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Modepaie was successfully destroyed"
  end
end
