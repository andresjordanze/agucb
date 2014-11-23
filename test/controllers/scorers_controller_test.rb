require 'test_helper'

class ScorersControllerTest < ActionController::TestCase
  setup do
    @scorer = scorers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scorers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scorer" do
    assert_difference('Scorer.count') do
      post :create, scorer: { goals: @scorer.goals, match_id: @scorer.match_id, player_id: @scorer.player_id, team_id: @scorer.team_id }
    end

    assert_redirected_to scorer_path(assigns(:scorer))
  end

  test "should show scorer" do
    get :show, id: @scorer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scorer
    assert_response :success
  end

  test "should update scorer" do
    patch :update, id: @scorer, scorer: { goals: @scorer.goals, match_id: @scorer.match_id, player_id: @scorer.player_id, team_id: @scorer.team_id }
    assert_redirected_to scorer_path(assigns(:scorer))
  end

  test "should destroy scorer" do
    assert_difference('Scorer.count', -1) do
      delete :destroy, id: @scorer
    end

    assert_redirected_to scorers_path
  end
end
