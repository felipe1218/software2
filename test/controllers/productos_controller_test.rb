require 'test_helper'

class ProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get productos_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_url
    assert_response :success
  end

  test "should create producto" do
    assert_difference('Producto.count') do
      post productos_url, params: { producto: { alto: @producto.alto, ancho: @producto.ancho, ciudad: @producto.ciudad, color: @producto.color, descripcion: @producto.descripcion, empresa: @producto.empresa, material: @producto.material, nombre: @producto.nombre, peso: @producto.peso, profundidad: @producto.profundidad, tipo: @producto.tipo } }
    end

    assert_redirected_to producto_url(Producto.last)
  end

  test "should show producto" do
    get producto_url(@producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_url(@producto)
    assert_response :success
  end

  test "should update producto" do
    patch producto_url(@producto), params: { producto: { alto: @producto.alto, ancho: @producto.ancho, ciudad: @producto.ciudad, color: @producto.color, descripcion: @producto.descripcion, empresa: @producto.empresa, material: @producto.material, nombre: @producto.nombre, peso: @producto.peso, profundidad: @producto.profundidad, tipo: @producto.tipo } }
    assert_redirected_to producto_url(@producto)
  end

  test "should destroy producto" do
    assert_difference('Producto.count', -1) do
      delete producto_url(@producto)
    end

    assert_redirected_to productos_url
  end
end
