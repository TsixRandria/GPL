require "application_system_test_case"

class VoituresTest < ApplicationSystemTestCase
  setup do
    @voiture = voitures(:one)
  end

  test "visiting the index" do
    visit voitures_url
    assert_selector "h1", text: "Voitures"
  end

  test "creating a Voiture" do
    visit voitures_url
    click_on "New Voiture"

    check "Climatiseur" if @voiture.climatiseur
    fill_in "Marque", with: @voiture.marque
    fill_in "Place", with: @voiture.place
    fill_in "Status", with: @voiture.status
    fill_in "Type", with: @voiture.type
    fill_in "Vitesse", with: @voiture.vitesse
    click_on "Create Voiture"

    assert_text "Voiture was successfully created"
    click_on "Back"
  end

  test "updating a Voiture" do
    visit voitures_url
    click_on "Edit", match: :first

    check "Climatiseur" if @voiture.climatiseur
    fill_in "Marque", with: @voiture.marque
    fill_in "Place", with: @voiture.place
    fill_in "Status", with: @voiture.status
    fill_in "Type", with: @voiture.type
    fill_in "Vitesse", with: @voiture.vitesse
    click_on "Update Voiture"

    assert_text "Voiture was successfully updated"
    click_on "Back"
  end

  test "destroying a Voiture" do
    visit voitures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voiture was successfully destroyed"
  end
end
