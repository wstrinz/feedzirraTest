require 'test_helper'

class ViewfeedControllerTest < ActionController::TestCase
  test "should get all" do
    get :all
    assert_response :success
  end

  test "should get refresh" do
    get :refresh
    assert_response :success
  end

  test "should get add" do
    get :add
    assert_response :success
  end

end
