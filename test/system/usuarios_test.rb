require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "creating a Usuario" do
    visit usuarios_url
    click_on "New Usuario"

    fill_in "Celular", with: @usuario.celular
    fill_in "Ciudad", with: @usuario.ciudad
    fill_in "Departamento", with: @usuario.departamento
    fill_in "Direccion", with: @usuario.direccion
    fill_in "Nombre", with: @usuario.nombre
    fill_in "Numero Documento", with: @usuario.numero_documento
    fill_in "Pais", with: @usuario.pais
    fill_in "Profesion", with: @usuario.profesion
    fill_in "Telefono", with: @usuario.telefono
    fill_in "Tipo Documento", with: @usuario.tipo_documento
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "updating a Usuario" do
    visit usuarios_url
    click_on "Edit", match: :first

    fill_in "Celular", with: @usuario.celular
    fill_in "Ciudad", with: @usuario.ciudad
    fill_in "Departamento", with: @usuario.departamento
    fill_in "Direccion", with: @usuario.direccion
    fill_in "Nombre", with: @usuario.nombre
    fill_in "Numero Documento", with: @usuario.numero_documento
    fill_in "Pais", with: @usuario.pais
    fill_in "Profesion", with: @usuario.profesion
    fill_in "Telefono", with: @usuario.telefono
    fill_in "Tipo Documento", with: @usuario.tipo_documento
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario" do
    visit usuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario was successfully destroyed"
  end
end
