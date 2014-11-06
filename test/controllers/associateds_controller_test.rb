require 'test_helper'

class AssociatedsControllerTest < ActionController::TestCase
  setup do
    @associated = associateds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associateds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associated" do
    assert_difference('Associated.count') do
      post :create, associated: { address: @associated.address, cellphone: @associated.cellphone, email: @associated.email, lastname: @associated.lastname, name: @associated.name, phone: @associated.phone, universityCareer: @associated.universityCareer, universityDegree: @associated.universityDegree, yearDegree: @associated.yearDegree }
    end

    assert_redirected_to associated_path(assigns(:associated))
  end

  test "should show associated" do
    get :show, id: @associated
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associated
    assert_response :success
  end

  test "should update associated" do
    patch :update, id: @associated, associated: { address: @associated.address, cellphone: @associated.cellphone, email: @associated.email, lastname: @associated.lastname, name: @associated.name, phone: @associated.phone, universityCareer: @associated.universityCareer, universityDegree: @associated.universityDegree, yearDegree: @associated.yearDegree }
    assert_redirected_to associated_path(assigns(:associated))
  end

  test "should destroy associated" do
    assert_difference('Associated.count', -1) do
      delete :destroy, id: @associated
    end

    assert_redirected_to associateds_path
  end
end
