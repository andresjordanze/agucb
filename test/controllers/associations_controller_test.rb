require 'test_helper'

class AssociationsControllerTest < ActionController::TestCase
  setup do
    @association = associations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create association" do
    assert_difference('Association.count') do
      post :create, association: { aboutUs: @association.aboutUs, generalObjectives: @association.generalObjectives, institutionalPurposes: @association.institutionalPurposes, mission: @association.mission, organization: @association.organization, specificObjectives: @association.specificObjectives, vision: @association.vision }
    end

    assert_redirected_to association_path(assigns(:association))
  end

  test "should show association" do
    get :show, id: @association
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @association
    assert_response :success
  end

  test "should update association" do
    patch :update, id: @association, association: { aboutUs: @association.aboutUs, generalObjectives: @association.generalObjectives, institutionalPurposes: @association.institutionalPurposes, mission: @association.mission, organization: @association.organization, specificObjectives: @association.specificObjectives, vision: @association.vision }
    assert_redirected_to association_path(assigns(:association))
  end

  test "should destroy association" do
    assert_difference('Association.count', -1) do
      delete :destroy, id: @association
    end

    assert_redirected_to associations_path
  end
end
