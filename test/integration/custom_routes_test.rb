require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens the login page" do
    get "/login"
    assert_response :success
  end

  test "that /logout route open the logout page" do
    get "/logout"
    assert_response :redirect
    assert_redirected_to "/"
  end

  test "that /register opens the sign up page" do
    get '/register'
    assert :success
  end

  test "that /account opens the edit user registration page" do
    get '/account'
    assert :success
  end

  test "that a profile page works" do
    get "/carole"
    assert :success
  end
end
