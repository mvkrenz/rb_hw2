require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

  def setup
    @inactive_user  = users(:malory)
    @activated_user = users(:marina)
  end

  test "should redirect to root_url when user not activated" do
    get user_path(@inactive_user)
    assert_redirected_to root_url
  end

  test "should display user when activated" do
    get user_path(@activated_user)
    assert_template 'users/show'
    assert_response :success
  end
end
