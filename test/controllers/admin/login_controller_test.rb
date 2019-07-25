require 'test_helper'

class Admin::LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_login_index_url
    assert_response :success
  end

  test "should get logaut" do
    get admin_login_logaut_url
    assert_response :success
  end

  test "should get auntetication" do
    get admin_login_auntetication_url
    assert_response :success
  end

end
