require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  setup do
    @photo_album = photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo" do
    assert_difference('Photo.count') do
      post :create, photo: {  }
    end

    assert_redirected_to photo_path(assigns(:photo))
  end

  test "should show photo" do
    get :show, id: @photo_album
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_album
    assert_response :success
  end

  test "should update photo" do
    patch :update, id: @photo_album, photo: {  }
    assert_redirected_to photo_path(assigns(:photo))
  end

  test "should destroy photo" do
    assert_difference('Photo.count', -1) do
      delete :destroy, id: @photo_album
    end

    assert_redirected_to photos_path
  end
end
