require 'test_helper'

class PhotoLinksControllerTest < ActionController::TestCase
  setup do
    @photo_link = photo_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_link" do
    assert_difference('PhotoLink.count') do
      post :create, photo_link: { tumblr_url: @photo_link.tumblr_url, user_id: @photo_link.user_id }
    end

    assert_redirected_to photo_link_path(assigns(:photo_link))
  end

  test "should show photo_link" do
    get :show, id: @photo_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_link
    assert_response :success
  end

  test "should update photo_link" do
    patch :update, id: @photo_link, photo_link: { tumblr_url: @photo_link.tumblr_url, user_id: @photo_link.user_id }
    assert_redirected_to photo_link_path(assigns(:photo_link))
  end

  test "should destroy photo_link" do
    assert_difference('PhotoLink.count', -1) do
      delete :destroy, id: @photo_link
    end

    assert_redirected_to photo_links_path
  end
end
