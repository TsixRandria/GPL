require 'test_helper'

class ReservationOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation_option = reservation_options(:one)
  end

  test "should get index" do
    get reservation_options_url
    assert_response :success
  end

  test "should get new" do
    get new_reservation_option_url
    assert_response :success
  end

  test "should create reservation_option" do
    assert_difference('ReservationOption.count') do
      post reservation_options_url, params: { reservation_option: { quantite: @reservation_option.quantite } }
    end

    assert_redirected_to reservation_option_url(ReservationOption.last)
  end

  test "should show reservation_option" do
    get reservation_option_url(@reservation_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservation_option_url(@reservation_option)
    assert_response :success
  end

  test "should update reservation_option" do
    patch reservation_option_url(@reservation_option), params: { reservation_option: { quantite: @reservation_option.quantite } }
    assert_redirected_to reservation_option_url(@reservation_option)
  end

  test "should destroy reservation_option" do
    assert_difference('ReservationOption.count', -1) do
      delete reservation_option_url(@reservation_option)
    end

    assert_redirected_to reservation_options_url
  end
end
