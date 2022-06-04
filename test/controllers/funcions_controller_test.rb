require "test_helper"

class FuncionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funcion = funcions(:one)
  end

  test "should get index" do
    get funcions_url
    assert_response :success
  end

  test "should get new" do
    get new_funcion_url
    assert_response :success
  end

  test "should create funcion" do
    assert_difference("Funcion.count") do
      post funcions_url, params: { funcion: { fecha: @funcion.fecha, pelicula_id: @funcion.pelicula_id, precio: @funcion.precio, sala_id: @funcion.sala_id } }
    end

    assert_redirected_to funcion_url(Funcion.last)
  end

  test "should show funcion" do
    get funcion_url(@funcion)
    assert_response :success
  end

  test "should get edit" do
    get edit_funcion_url(@funcion)
    assert_response :success
  end

  test "should update funcion" do
    patch funcion_url(@funcion), params: { funcion: { fecha: @funcion.fecha, pelicula_id: @funcion.pelicula_id, precio: @funcion.precio, sala_id: @funcion.sala_id } }
    assert_redirected_to funcion_url(@funcion)
  end

  test "should destroy funcion" do
    assert_difference("Funcion.count", -1) do
      delete funcion_url(@funcion)
    end

    assert_redirected_to funcions_url
  end
end
