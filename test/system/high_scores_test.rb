require "application_system_test_case"

class HighScoresTest < ApplicationSystemTestCase
  setup do
    @high_score = high_scores(:one)
  end

  test "visiting the index" do
    visit high_scores_url
    assert_selector "h1", text: "High Scores"
  end

  test "creating a High score" do
    visit high_scores_url
    click_on "New High Score"

    fill_in "Idvoluntario", with: @high_score.idVoluntario
    fill_in "Informacao", with: @high_score.informacao
    fill_in "Nome", with: @high_score.nome
    click_on "Create High score"

    assert_text "High score was successfully created"
    click_on "Back"
  end

  test "updating a High score" do
    visit high_scores_url
    click_on "Edit", match: :first

    fill_in "Idvoluntario", with: @high_score.idVoluntario
    fill_in "Informacao", with: @high_score.informacao
    fill_in "Nome", with: @high_score.nome
    click_on "Update High score"

    assert_text "High score was successfully updated"
    click_on "Back"
  end

  test "destroying a High score" do
    visit high_scores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "High score was successfully destroyed"
  end
end
