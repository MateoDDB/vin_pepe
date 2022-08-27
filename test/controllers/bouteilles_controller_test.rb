require 'test_helper'

class BouteillesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bouteille = bouteilles(:one)
  end

  test "should get index" do
    get bouteilles_url
    assert_response :success
  end

  test "should get new" do
    get new_bouteille_url
    assert_response :success
  end

  test "should create bouteille" do
    assert_difference('Bouteille.count') do
      post bouteilles_url, params: { bouteille: { description: @bouteille.description, name: @bouteille.name, note: @bouteille.note, quantity: @bouteille.quantity, year: @bouteille.year } }
    end

    assert_redirected_to bouteille_url(Bouteille.last)
  end

  test "should show bouteille" do
    get bouteille_url(@bouteille)
    assert_response :success
  end

  test "should get edit" do
    get edit_bouteille_url(@bouteille)
    assert_response :success
  end

  test "should update bouteille" do
    patch bouteille_url(@bouteille), params: { bouteille: { description: @bouteille.description, name: @bouteille.name, note: @bouteille.note, quantity: @bouteille.quantity, year: @bouteille.year } }
    assert_redirected_to bouteille_url(@bouteille)
  end

  test "should destroy bouteille" do
    assert_difference('Bouteille.count', -1) do
      delete bouteille_url(@bouteille)
    end

    assert_redirected_to bouteilles_url
  end
end
