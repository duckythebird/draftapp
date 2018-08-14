require 'test_helper'

class DraftBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @draft_board = draft_boards(:one)
  end

  test "should get index" do
    get draft_boards_url
    assert_response :success
  end

  test "should get new" do
    get new_draft_board_url
    assert_response :success
  end

  test "should create draft_board" do
    assert_difference('DraftBoard.count') do
      post draft_boards_url, params: { draft_board: {  } }
    end

    assert_redirected_to draft_board_url(DraftBoard.last)
  end

  test "should show draft_board" do
    get draft_board_url(@draft_board)
    assert_response :success
  end

  test "should get edit" do
    get edit_draft_board_url(@draft_board)
    assert_response :success
  end

  test "should update draft_board" do
    patch draft_board_url(@draft_board), params: { draft_board: {  } }
    assert_redirected_to draft_board_url(@draft_board)
  end

  test "should destroy draft_board" do
    assert_difference('DraftBoard.count', -1) do
      delete draft_board_url(@draft_board)
    end

    assert_redirected_to draft_boards_url
  end
end
