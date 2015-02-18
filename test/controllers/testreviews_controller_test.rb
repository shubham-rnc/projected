require 'test_helper'

class TestreviewsControllerTest < ActionController::TestCase
  setup do
    @testreview = testreviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testreviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testreview" do
    assert_difference('Testreview.count') do
      post :create, testreview: { body: @testreview.body }
    end

    assert_redirected_to testreview_path(assigns(:testreview))
  end

  test "should show testreview" do
    get :show, id: @testreview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testreview
    assert_response :success
  end

  test "should update testreview" do
    patch :update, id: @testreview, testreview: { body: @testreview.body }
    assert_redirected_to testreview_path(assigns(:testreview))
  end

  test "should destroy testreview" do
    assert_difference('Testreview.count', -1) do
      delete :destroy, id: @testreview
    end

    assert_redirected_to testreviews_path
  end
end
