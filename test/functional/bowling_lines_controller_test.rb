require 'test_helper'

class BowlingLinesControllerTest < ActionController::TestCase
  setup do
    @bowling_line = bowling_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bowling_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bowling_line" do
    assert_difference('BowlingLine.count') do
      post :create, bowling_line: { bowler_id: @bowling_line.bowler_id, innings_id: @bowling_line.innings_id, maidens: @bowling_line.maidens, no_balls: @bowling_line.no_balls, overs: @bowling_line.overs, runs: @bowling_line.runs, wickets: @bowling_line.wickets, wides: @bowling_line.wides }
    end

    assert_redirected_to bowling_line_path(assigns(:bowling_line))
  end

  test "should show bowling_line" do
    get :show, id: @bowling_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bowling_line
    assert_response :success
  end

  test "should update bowling_line" do
    put :update, id: @bowling_line, bowling_line: { bowler_id: @bowling_line.bowler_id, innings_id: @bowling_line.innings_id, maidens: @bowling_line.maidens, no_balls: @bowling_line.no_balls, overs: @bowling_line.overs, runs: @bowling_line.runs, wickets: @bowling_line.wickets, wides: @bowling_line.wides }
    assert_redirected_to bowling_line_path(assigns(:bowling_line))
  end

  test "should destroy bowling_line" do
    assert_difference('BowlingLine.count', -1) do
      delete :destroy, id: @bowling_line
    end

    assert_redirected_to bowling_lines_path
  end
end
