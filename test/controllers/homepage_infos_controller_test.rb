require 'test_helper'

class HomepageInfosControllerTest < ActionController::TestCase
  setup do
    @homepage_info = homepage_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homepage_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homepage_info" do
    assert_difference('HomepageInfo.count') do
      post :create, homepage_info: { homepage_display_name: @homepage_info.homepage_display_name, homepage_header: @homepage_info.homepage_header, user_id: @homepage_info.user_id }
    end

    assert_redirected_to homepage_info_path(assigns(:homepage_info))
  end

  test "should show homepage_info" do
    get :show, id: @homepage_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homepage_info
    assert_response :success
  end

  test "should update homepage_info" do
    patch :update, id: @homepage_info, homepage_info: { homepage_display_name: @homepage_info.homepage_display_name, homepage_header: @homepage_info.homepage_header, user_id: @homepage_info.user_id }
    assert_redirected_to homepage_info_path(assigns(:homepage_info))
  end

  test "should destroy homepage_info" do
    assert_difference('HomepageInfo.count', -1) do
      delete :destroy, id: @homepage_info
    end

    assert_redirected_to homepage_infos_path
  end
end
