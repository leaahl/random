require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get about_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get privacy_policy_url
    assert_response :success
  end

  test "should get help" do
    get help_url
    assert_response :success
  end

end
