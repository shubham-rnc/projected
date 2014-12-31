require 'test_helper'

class AllowedvalueslevelsControllerTest < ActionController::TestCase
  setup do
    @allowedvalueslevel = allowedvalueslevels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allowedvalueslevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allowedvalueslevel" do
    assert_difference('Allowedvalueslevel.count') do
      post :create, allowedvalueslevel: { values: @allowedvalueslevel.values }
    end

    assert_redirected_to allowedvalueslevel_path(assigns(:allowedvalueslevel))
  end

  test "should show allowedvalueslevel" do
    get :show, id: @allowedvalueslevel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allowedvalueslevel
    assert_response :success
  end

  test "should update allowedvalueslevel" do
    patch :update, id: @allowedvalueslevel, allowedvalueslevel: { values: @allowedvalueslevel.values }
    assert_redirected_to allowedvalueslevel_path(assigns(:allowedvalueslevel))
  end

  test "should destroy allowedvalueslevel" do
    assert_difference('Allowedvalueslevel.count', -1) do
      delete :destroy, id: @allowedvalueslevel
    end

    assert_redirected_to allowedvalueslevels_path
  end
end
