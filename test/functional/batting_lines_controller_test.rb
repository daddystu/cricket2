require 'test_helper'

class BattingLinesControllerTest < ActionController::TestCase
  setup do
    @batting_line = batting_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batting_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batting_line" do
    assert_difference('BattingLine.count') do
      post :create, batting_line: { balls: @batting_line.balls, batsman_id: @batting_line.batsman_id, bowler: @batting_line.bowler, fours: @batting_line.fours, how_out: @batting_line.how_out, innings_id: @batting_line.innings_id, is_out: @batting_line.is_out, runs: @batting_line.runs, sixes: @batting_line.sixes }
    end

    assert_redirected_to batting_line_path(assigns(:batting_line))
  end

  test "should show batting_line" do
    get :show, id: @batting_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @batting_line
    assert_response :success
  end

  test "should update batting_line" do
    put :update, id: @batting_line, batting_line: { balls: @batting_line.balls, batsman_id: @batting_line.batsman_id, bowler: @batting_line.bowler, fours: @batting_line.fours, how_out: @batting_line.how_out, innings_id: @batting_line.innings_id, is_out: @batting_line.is_out, runs: @batting_line.runs, sixes: @batting_line.sixes }
    assert_redirected_to batting_line_path(assigns(:batting_line))
  end

  test "should destroy batting_line" do
    assert_difference('BattingLine.count', -1) do
      delete :destroy, id: @batting_line
    end

    assert_redirected_to batting_lines_path
  end
end
