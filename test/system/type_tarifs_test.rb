require "application_system_test_case"

class TypeTarifsTest < ApplicationSystemTestCase
  setup do
    @type_tarif = type_tarifs(:one)
  end

  test "visiting the index" do
    visit type_tarifs_url
    assert_selector "h1", text: "Type Tarifs"
  end

  test "creating a Type tarif" do
    visit type_tarifs_url
    click_on "New Type Tarif"

    fill_in "Titre", with: @type_tarif.titre
    click_on "Create Type tarif"

    assert_text "Type tarif was successfully created"
    click_on "Back"
  end

  test "updating a Type tarif" do
    visit type_tarifs_url
    click_on "Edit", match: :first

    fill_in "Titre", with: @type_tarif.titre
    click_on "Update Type tarif"

    assert_text "Type tarif was successfully updated"
    click_on "Back"
  end

  test "destroying a Type tarif" do
    visit type_tarifs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type tarif was successfully destroyed"
  end
end
