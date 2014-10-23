require 'test_helper'

class TeamsControllerTest < ActionController::TestCase
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post :create, team: { goles: @team.goles, login: @team.login, name: @team.name, p_emp: @team.p_emp, p_gan: @team.p_gan, p_jug: @team.p_jug, p_per: @team.p_per, password: @team.password, tar_ama: @team.tar_ama, tar_roj: @team.tar_roj }
    end

    assert_redirected_to team_path(assigns(:team))
  end

  test "should show team" do
    get :show, id: @team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team
    assert_response :success
  end

  test "should update team" do
    patch :update, id: @team, team: { goles: @team.goles, login: @team.login, name: @team.name, p_emp: @team.p_emp, p_gan: @team.p_gan, p_jug: @team.p_jug, p_per: @team.p_per, password: @team.password, tar_ama: @team.tar_ama, tar_roj: @team.tar_roj }
    assert_redirected_to team_path(assigns(:team))
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete :destroy, id: @team
    end

    assert_redirected_to teams_path
  end
end
