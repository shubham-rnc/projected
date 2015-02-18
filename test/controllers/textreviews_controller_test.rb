require 'test_helper'

class TextreviewsControllerTest < ActionController::TestCase
  setup do
    @textreview = textreviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textreviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textreview" do
    assert_difference('Textreview.count') do
      post :create, textreview: { body: @textreview.body }
    end

    assert_redirected_to textreview_path(assigns(:textreview))
  end

  test "should show textreview" do
    get :show, id: @textreview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @textreview
    assert_response :success
  end

  test "should update textreview" do
    patch :update, id: @textreview, textreview: { body: @textreview.body }
    assert_redirected_to textreview_path(assigns(:textreview))
  end

  test "should destroy textreview" do
    assert_difference('Textreview.count', -1) do
      delete :destroy, id: @textreview
    end

    assert_redirected_to textreviews_path
  end
end
