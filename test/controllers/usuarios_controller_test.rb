require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_url
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post usuarios_url, params: { usuario: { celular: @usuario.celular, ciudad: @usuario.ciudad, departamento: @usuario.departamento, direccion: @usuario.direccion, nombre: @usuario.nombre, numero_documento: @usuario.numero_documento, pais: @usuario.pais, profesion: @usuario.profesion, telefono: @usuario.telefono, tipo_documento: @usuario.tipo_documento } }
    end

    assert_redirected_to usuario_url(Usuario.last)
  end

  test "should show usuario" do
    get usuario_url(@usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_url(@usuario)
    assert_response :success
  end

  test "should update usuario" do
    patch usuario_url(@usuario), params: { usuario: { celular: @usuario.celular, ciudad: @usuario.ciudad, departamento: @usuario.departamento, direccion: @usuario.direccion, nombre: @usuario.nombre, numero_documento: @usuario.numero_documento, pais: @usuario.pais, profesion: @usuario.profesion, telefono: @usuario.telefono, tipo_documento: @usuario.tipo_documento } }
    assert_redirected_to usuario_url(@usuario)
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete usuario_url(@usuario)
    end

    assert_redirected_to usuarios_url
  end
end
