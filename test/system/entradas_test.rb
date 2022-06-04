require "application_system_test_case"

class EntradasTest < ApplicationSystemTestCase
  setup do
    @entrada = entradas(:one)
  end

  test "visiting the index" do
    visit entradas_url
    assert_selector "h1", text: "Entradas"
  end

  test "should create entrada" do
    visit entradas_url
    click_on "New entrada"

    fill_in "Funcion", with: @entrada.funcion_id
    fill_in "Usuario", with: @entrada.usuario_id
    click_on "Create Entrada"

    assert_text "Entrada was successfully created"
    click_on "Back"
  end

  test "should update Entrada" do
    visit entrada_url(@entrada)
    click_on "Edit this entrada", match: :first

    fill_in "Funcion", with: @entrada.funcion_id
    fill_in "Usuario", with: @entrada.usuario_id
    click_on "Update Entrada"

    assert_text "Entrada was successfully updated"
    click_on "Back"
  end

  test "should destroy Entrada" do
    visit entrada_url(@entrada)
    click_on "Destroy this entrada", match: :first

    assert_text "Entrada was successfully destroyed"
  end
end
