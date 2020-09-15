require "application_system_test_case"

class PlanningsTest < ApplicationSystemTestCase
  setup do
    @planning = plannings(:one)
  end

  test "visiting the index" do
    visit plannings_url
    assert_selector "h1", text: "Plannings"
  end

  test "creating a Planning" do
    visit plannings_url
    click_on "New Planning"

    fill_in "Date debut", with: @planning.date_debut
    fill_in "Echeance", with: @planning.echeance
    fill_in "Etat", with: @planning.etat
    fill_in "Titre", with: @planning.titre
    click_on "Create Planning"

    assert_text "Planning was successfully created"
    click_on "Back"
  end

  test "updating a Planning" do
    visit plannings_url
    click_on "Edit", match: :first

    fill_in "Date debut", with: @planning.date_debut
    fill_in "Echeance", with: @planning.echeance
    fill_in "Etat", with: @planning.etat
    fill_in "Titre", with: @planning.titre
    click_on "Update Planning"

    assert_text "Planning was successfully updated"
    click_on "Back"
  end

  test "destroying a Planning" do
    visit plannings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Planning was successfully destroyed"
  end
end
