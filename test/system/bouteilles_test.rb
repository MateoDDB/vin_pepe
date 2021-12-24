require "application_system_test_case"

class BouteillesTest < ApplicationSystemTestCase
  setup do
    @bouteille = bouteilles(:one)
  end

  test "visiting the index" do
    visit bouteilles_url
    assert_selector "h1", text: "Bouteilles"
  end

  test "creating a Bouteille" do
    visit bouteilles_url
    click_on "New Bouteille"

    fill_in "Description", with: @bouteille.description
    fill_in "Name", with: @bouteille.name
    fill_in "Note", with: @bouteille.note
    fill_in "Quantity", with: @bouteille.quantity
    fill_in "Year", with: @bouteille.year
    click_on "Create Bouteille"

    assert_text "Bouteille was successfully created"
    click_on "Back"
  end

  test "updating a Bouteille" do
    visit bouteilles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @bouteille.description
    fill_in "Name", with: @bouteille.name
    fill_in "Note", with: @bouteille.note
    fill_in "Quantity", with: @bouteille.quantity
    fill_in "Year", with: @bouteille.year
    click_on "Update Bouteille"

    assert_text "Bouteille was successfully updated"
    click_on "Back"
  end

  test "destroying a Bouteille" do
    visit bouteilles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bouteille was successfully destroyed"
  end
end
