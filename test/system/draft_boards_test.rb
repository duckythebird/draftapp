require "application_system_test_case"

class DraftBoardsTest < ApplicationSystemTestCase
  setup do
    @draft_board = draft_boards(:one)
  end

  test "visiting the index" do
    visit draft_boards_url
    assert_selector "h1", text: "Draft Boards"
  end

  test "creating a Draft board" do
    visit draft_boards_url
    click_on "New Draft Board"

    click_on "Create Draft board"

    assert_text "Draft board was successfully created"
    click_on "Back"
  end

  test "updating a Draft board" do
    visit draft_boards_url
    click_on "Edit", match: :first

    click_on "Update Draft board"

    assert_text "Draft board was successfully updated"
    click_on "Back"
  end

  test "destroying a Draft board" do
    visit draft_boards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Draft board was successfully destroyed"
  end
end
