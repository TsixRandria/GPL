require "application_system_test_case"

class ReservationOptionsTest < ApplicationSystemTestCase
  setup do
    @reservation_option = reservation_options(:one)
  end

  test "visiting the index" do
    visit reservation_options_url
    assert_selector "h1", text: "Reservation Options"
  end

  test "creating a Reservation option" do
    visit reservation_options_url
    click_on "New Reservation Option"

    fill_in "Quantite", with: @reservation_option.quantite
    click_on "Create Reservation option"

    assert_text "Reservation option was successfully created"
    click_on "Back"
  end

  test "updating a Reservation option" do
    visit reservation_options_url
    click_on "Edit", match: :first

    fill_in "Quantite", with: @reservation_option.quantite
    click_on "Update Reservation option"

    assert_text "Reservation option was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservation option" do
    visit reservation_options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservation option was successfully destroyed"
  end
end
