require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get all employees" do
    get employees_url
    assert assigns(:employees).any?
  end
end
