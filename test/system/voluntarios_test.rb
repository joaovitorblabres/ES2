require "application_system_test_case"

class VoluntariosTest < ApplicationSystemTestCase
  setup do
    @voluntario = voluntarios(:one)
  end

  test "visiting the index" do
    visit voluntarios_url
    assert_selector "h1", text: "Voluntarios"
  end

  test "creating a Voluntario" do
    visit voluntarios_url
    click_on "New Voluntario"

    fill_in "Contato", with: @voluntario.contato
    fill_in "Cpf", with: @voluntario.cpf
    fill_in "Informacao", with: @voluntario.informacao
    fill_in "Nome", with: @voluntario.nome
    click_on "Create Voluntario"

    assert_text "Voluntario was successfully created"
    click_on "Back"
  end

  test "updating a Voluntario" do
    visit voluntarios_url
    click_on "Edit", match: :first

    fill_in "Contato", with: @voluntario.contato
    fill_in "Cpf", with: @voluntario.cpf
    fill_in "Informacao", with: @voluntario.informacao
    fill_in "Nome", with: @voluntario.nome
    click_on "Update Voluntario"

    assert_text "Voluntario was successfully updated"
    click_on "Back"
  end

  test "destroying a Voluntario" do
    visit voluntarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voluntario was successfully destroyed"
  end
end
