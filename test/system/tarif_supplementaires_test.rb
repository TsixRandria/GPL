require "application_system_test_case"

class TarifSupplementairesTest < ApplicationSystemTestCase
  setup do
    @tarif_supplementaire = tarif_supplementaires(:one)
  end

  test "visiting the index" do
    visit tarif_supplementaires_url
    assert_selector "h1", text: "Tarif Supplementaires"
  end

  test "creating a Tarif supplementaire" do
    visit tarif_supplementaires_url
    click_on "New Tarif Supplementaire"

    fill_in "Libelle", with: @tarif_supplementaire.libelle
    click_on "Create Tarif supplementaire"

    assert_text "Tarif supplementaire was successfully created"
    click_on "Back"
  end

  test "updating a Tarif supplementaire" do
    visit tarif_supplementaires_url
    click_on "Edit", match: :first

    fill_in "Libelle", with: @tarif_supplementaire.libelle
    click_on "Update Tarif supplementaire"

    assert_text "Tarif supplementaire was successfully updated"
    click_on "Back"
  end

  test "destroying a Tarif supplementaire" do
    visit tarif_supplementaires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tarif supplementaire was successfully destroyed"
  end
end
