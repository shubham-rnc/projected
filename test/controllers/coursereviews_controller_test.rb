require 'test_helper'

class CoursereviewsControllerTest < ActionController::TestCase
  setup do
    @coursereview = coursereviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coursereviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coursereview" do
    assert_difference('Coursereview.count') do
      post :create, coursereview: { alumni: @coursereview.alumni, body: @coursereview.body, coursename: @coursereview.coursename, institutehandler_id: @coursereview.institutehandler_id, user_id: @coursereview.user_id }
    end

    assert_redirected_to coursereview_path(assigns(:coursereview))
  end

  test "should show coursereview" do
    get :show, id: @coursereview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coursereview
    assert_response :success
  end

  test "should update coursereview" do
    patch :update, id: @coursereview, coursereview: { alumni: @coursereview.alumni, body: @coursereview.body, coursename: @coursereview.coursename, institutehandler_id: @coursereview.institutehandler_id, user_id: @coursereview.user_id }
    assert_redirected_to coursereview_path(assigns(:coursereview))
  end

  test "should destroy coursereview" do
    assert_difference('Coursereview.count', -1) do
      delete :destroy, id: @coursereview
    end

    assert_redirected_to coursereviews_path
  end
end
