require "test_helper"

class HomeTest < ActionDispatch::IntegrationTest
  def setup
  end

  test "home index" do
    get "/"
    assert_response :success
    assert_select "title", "Sad App > Home"
    assert_select "h1", "Welcome to the Sad App"
  end

  test "create session" do
    get "/home/create_session?user=basic-user-man"
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "basic-user-man"
  end
end
