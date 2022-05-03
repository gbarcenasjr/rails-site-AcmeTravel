require "application_system_test_case"

class StatementsTest < ApplicationSystemTestCase
  setup do
    @statement = statements(:one)
  end

  test "visiting the index" do
    visit statements_url
    assert_selector "h1", text: "Statements"
  end

  test "should create statement" do
    visit statements_url
    click_on "New statement"

    fill_in "Content", with: @statement.content
    fill_in "Header", with: @statement.header
    fill_in "Trip", with: @statement.trip_id
    fill_in "Weight", with: @statement.weight
    click_on "Create Statement"

    assert_text "Statement was successfully created"
    click_on "Back"
  end

  test "should update Statement" do
    visit statement_url(@statement)
    click_on "Edit this statement", match: :first

    fill_in "Content", with: @statement.content
    fill_in "Header", with: @statement.header
    fill_in "Trip", with: @statement.trip_id
    fill_in "Weight", with: @statement.weight
    click_on "Update Statement"

    assert_text "Statement was successfully updated"
    click_on "Back"
  end

  test "should destroy Statement" do
    visit statement_url(@statement)
    click_on "Destroy this statement", match: :first

    assert_text "Statement was successfully destroyed"
  end
end
