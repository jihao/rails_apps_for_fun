require 'test_helper'

class AuthorizationControllerTest < ActionController::TestCase
  test "should get oauth_create" do
    get :oauth_create
    assert_response :success
  end

  test "should get oauth_destroy" do
    get :oauth_destroy
    assert_response :success
  end

end
