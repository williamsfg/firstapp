require "application_system_test_case"

class KontaktsTest < ApplicationSystemTestCase
  setup do
    @kontakt = kontakts(:one)
  end

  test "visiting the index" do
    visit kontakts_url
    assert_selector "h1", text: "Kontakts"
  end

  test "should create kontakt" do
    visit kontakts_url
    click_on "Lägg till kontakt"

    fill_in "Efternamn", with: @kontakt.efternamn
    fill_in "Email", with: @kontakt.email
    fill_in "Förnamn", with: @kontakt.förnamn
    fill_in "Mobilnummer", with: @kontakt.mobilnummer
    fill_in "Title", with: @kontakt.title
    click_on "Lägg till kontakt"

    assert_text "Kontaktuppgifterna har skapats"
    click_on "Tillbaka"
  end

  test "should update Kontakt" do
    visit kontakt_url(@kontakt)
    click_on "Redigera kontaktuppgifter", match: :first

    fill_in "Efternamn", with: @kontakt.efternamn
    fill_in "Email", with: @kontakt.email
    fill_in "Förnamn", with: @kontakt.förnamn
    fill_in "Mobilnummer", with: @kontakt.mobilnummer
    fill_in "Title", with: @kontakt.title
    click_on "Uppdatera Kontaktuppgifter"

    assert_text "Kontaktuppgifterna har uppdaterades"
    click_on "Tillbacka"
  end

  test "should destroy Kontakt" do
    visit kontakt_url(@kontakt)
    click_on "Ta bort Kontaktuppgifterna", match: :first

    assert_text "Kontaktuppgifterna har taggits bort"
  end
end
