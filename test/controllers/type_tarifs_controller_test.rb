require 'test_helper'

class TypeTarifsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_tarif = type_tarifs(:one)
  end

  test "should get index" do
    get type_tarifs_url
    assert_response :success
  end

  test "should get new" do
    get new_type_tarif_url
    assert_response :success
  end

  test "should create type_tarif" do
    assert_difference('TypeTarif.count') do
      post type_tarifs_url, params: { type_tarif: { titre: @type_tarif.titre } }
    end

    assert_redirected_to type_tarif_url(TypeTarif.last)
  end

  test "should show type_tarif" do
    get type_tarif_url(@type_tarif)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_tarif_url(@type_tarif)
    assert_response :success
  end

  test "should update type_tarif" do
    patch type_tarif_url(@type_tarif), params: { type_tarif: { titre: @type_tarif.titre } }
    assert_redirected_to type_tarif_url(@type_tarif)
  end

  test "should destroy type_tarif" do
    assert_difference('TypeTarif.count', -1) do
      delete type_tarif_url(@type_tarif)
    end

    assert_redirected_to type_tarifs_url
  end
end
