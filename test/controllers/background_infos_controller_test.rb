require 'test_helper'

class BackgroundInfosControllerTest < ActionController::TestCase
  setup do
    @background_info = background_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:background_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create background_info" do
    assert_difference('BackgroundInfo.count') do
      post :create, background_info: {  }
    end

    assert_redirected_to background_info_path(assigns(:background_info))
  end

  test "should show background_info" do
    get :show, id: @background_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @background_info
    assert_response :success
  end

  test "should update background_info" do
    patch :update, id: @background_info, background_info: {  }
    assert_redirected_to background_info_path(assigns(:background_info))
  end

  test "should destroy background_info" do
    assert_difference('BackgroundInfo.count', -1) do
      delete :destroy, id: @background_info
    end

    assert_redirected_to background_infos_path
  end
end
