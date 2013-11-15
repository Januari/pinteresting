require 'test_helper'

class PinningsControllerTest < ActionController::TestCase
  setup do
    @pinning = pinnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pinnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pinning" do
    assert_difference('Pinning.count') do
      post :create, pinning: { description: @pinning.description }
    end

    assert_redirected_to pinning_path(assigns(:pinning))
  end

  test "should show pinning" do
    get :show, id: @pinning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pinning
    assert_response :success
  end

  test "should update pinning" do
    patch :update, id: @pinning, pinning: { description: @pinning.description }
    assert_redirected_to pinning_path(assigns(:pinning))
  end

  test "should destroy pinning" do
    assert_difference('Pinning.count', -1) do
      delete :destroy, id: @pinning
    end

    assert_redirected_to pinnings_path
  end
end
