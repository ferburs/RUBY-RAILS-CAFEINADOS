require "application_system_test_case"

class FuncionsTest < ApplicationSystemTestCase
  setup do
    @funcion = funcions(:one)
  end

  test "visiting the index" do
    visit funcions_url
    assert_selector "h1", text: "Funcions"
  end

  test "should create funcion" do
    visit funcions_url
    click_on "New funcion"

    fill_in "Fecha", with: @funcion.fecha
    fill_in "Pelicula", with: @funcion.pelicula_id
    fill_in "Precio", with: @funcion.precio
    fill_in "Sala", with: @funcion.sala_id
    click_on "Create Funcion"

    assert_text "Funcion was successfully created"
    click_on "Back"
  end

  test "should update Funcion" do
    visit funcion_url(@funcion)
    click_on "Edit this funcion", match: :first

    fill_in "Fecha", with: @funcion.fecha
    fill_in "Pelicula", with: @funcion.pelicula_id
    fill_in "Precio", with: @funcion.precio
    fill_in "Sala", with: @funcion.sala_id
    click_on "Update Funcion"

    assert_text "Funcion was successfully updated"
    click_on "Back"
  end

  test "should destroy Funcion" do
    visit funcion_url(@funcion)
    click_on "Destroy this funcion", match: :first

    assert_text "Funcion was successfully destroyed"
  end
end
