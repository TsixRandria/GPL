require 'test_helper'

class TarifSupplementairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarif_supplementaire = tarif_supplementaires(:one)
  end

  test "should get index" do
    get tarif_supplementaires_url
    assert_response :success
  end

  test "should get new" do
    get new_tarif_supplementaire_url
    assert_response :success
  end

  test "should create tarif_supplementaire" do
    assert_difference('TarifSupplementaire.count') do
      post tarif_supplementaires_url, params: { tarif_supplementaire: { libelle: @tarif_supplementaire.libelle } }
    end

    assert_redirected_to tarif_supplementaire_url(TarifSupplementaire.last)
  end

  test "should show tarif_supplementaire" do
    get tarif_supplementaire_url(@tarif_supplementaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_tarif_supplementaire_url(@tarif_supplementaire)
    assert_response :success
  end

  test "should update tarif_supplementaire" do
    patch tarif_supplementaire_url(@tarif_supplementaire), params: { tarif_supplementaire: { libelle: @tarif_supplementaire.libelle } }
    assert_redirected_to tarif_supplementaire_url(@tarif_supplementaire)
  end

  test "should destroy tarif_supplementaire" do
    assert_difference('TarifSupplementaire.count', -1) do
      delete tarif_supplementaire_url(@tarif_supplementaire)
    end

    assert_redirected_to tarif_supplementaires_url
  end
end
