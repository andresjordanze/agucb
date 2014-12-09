require 'test_helper'

class EnabledPlayersControllerTest < ActionController::TestCase
  setup do
    @enabled_player = enabled_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enabled_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enabled_player" do
    assert_difference('EnabledPlayer.count') do
      post :create, enabled_player: { match_id: @enabled_player.match_id, number: @enabled_player.number, player_id: @enabled_player.player_id, team_id: @enabled_player.team_id }
    end

    assert_redirected_to enabled_player_path(assigns(:enabled_player))
  end

  test "should show enabled_player" do
    get :show, id: @enabled_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enabled_player
    assert_response :success
  end

  test "should update enabled_player" do
    patch :update, id: @enabled_player, enabled_player: { match_id: @enabled_player.match_id, number: @enabled_player.number, player_id: @enabled_player.player_id, team_id: @enabled_player.team_id }
    assert_redirected_to enabled_player_path(assigns(:enabled_player))
  end

  test "should destroy enabled_player" do
    assert_difference('EnabledPlayer.count', -1) do
      delete :destroy, id: @enabled_player
    end

    assert_redirected_to enabled_players_path
  end
end
