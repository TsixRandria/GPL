require 'test_helper'

class ModepaiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modepaie = modepaies(:one)
  end

  test "should get index" do
    get modepaies_url
    assert_response :success
  end

  test "should get new" do
    get new_modepaie_url
    assert_response :success
  end

  test "should create modepaie" do
    assert_difference('Modepaie.count') do
      post modepaies_url, params: { modepaie: { combinaison: @modepaie.combinaison, datedebut: @modepaie.datedebut, datefin: @modepaie.datefin, prixbs: @modepaie.prixbs, prixhs: @modepaie.prixhs, prixms: @modepaie.prixms, rubrique: @modepaie.rubrique, status: @modepaie.status, tarifjour: @modepaie.tarifjour } }
    end

    assert_redirected_to modepaie_url(Modepaie.last)
  end

  test "should show modepaie" do
    get modepaie_url(@modepaie)
    assert_response :success
  end

  test "should get edit" do
    get edit_modepaie_url(@modepaie)
    assert_response :success
  end

  test "should update modepaie" do
    patch modepaie_url(@modepaie), params: { modepaie: { combinaison: @modepaie.combinaison, datedebut: @modepaie.datedebut, datefin: @modepaie.datefin, prixbs: @modepaie.prixbs, prixhs: @modepaie.prixhs, prixms: @modepaie.prixms, rubrique: @modepaie.rubrique, status: @modepaie.status, tarifjour: @modepaie.tarifjour } }
    assert_redirected_to modepaie_url(@modepaie)
  end

  test "should destroy modepaie" do
    assert_difference('Modepaie.count', -1) do
      delete modepaie_url(@modepaie)
    end

    assert_redirected_to modepaies_url
  end
end
