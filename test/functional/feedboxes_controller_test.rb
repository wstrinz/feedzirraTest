require 'test_helper'

class FeedboxesControllerTest < ActionController::TestCase
  setup do
    @feedbox = feedboxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feedboxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feedbox" do
    assert_difference('Feedbox.count') do
      post :create, feedbox: { last_update: @feedbox.last_update, read_index: @feedbox.read_index, title: @feedbox.title, url: @feedbox.url }
    end

    assert_redirected_to feedbox_path(assigns(:feedbox))
  end

  test "should show feedbox" do
    get :refresh, id: @feedbox
    get :show, id: @feedbox
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feedbox
    assert_response :success
  end

  test "should update feedbox" do
    put :update, id: @feedbox, feedbox: { last_update: @feedbox.last_update, read_index: @feedbox.read_index, title: @feedbox.title, url: @feedbox.url }
    assert_redirected_to feedbox_path(assigns(:feedbox))
  end

  test "should destroy feedbox" do
    assert_difference('Feedbox.count', -1) do
      delete :destroy, id: @feedbox
    end

    assert_redirected_to feedboxes_path
  end
end
