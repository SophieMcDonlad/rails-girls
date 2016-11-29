require 'test_helper'

class UserNameLstringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_name_lstring = user_name_lstrings(:one)
  end

  test "should get index" do
    get user_name_lstrings_url
    assert_response :success
  end

  test "should get new" do
    get new_user_name_lstring_url
    assert_response :success
  end

  test "should create user_name_lstring" do
    assert_difference('UserNameLstring.count') do
      post user_name_lstrings_url, params: { user_name_lstring: { body: @user_name_lstring.body, idea_id: @user_name_lstring.idea_id } }
    end

    assert_redirected_to user_name_lstring_url(UserNameLstring.last)
  end

  test "should show user_name_lstring" do
    get user_name_lstring_url(@user_name_lstring)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_name_lstring_url(@user_name_lstring)
    assert_response :success
  end

  test "should update user_name_lstring" do
    patch user_name_lstring_url(@user_name_lstring), params: { user_name_lstring: { body: @user_name_lstring.body, idea_id: @user_name_lstring.idea_id } }
    assert_redirected_to user_name_lstring_url(@user_name_lstring)
  end

  test "should destroy user_name_lstring" do
    assert_difference('UserNameLstring.count', -1) do
      delete user_name_lstring_url(@user_name_lstring)
    end

    assert_redirected_to user_name_lstrings_url
  end
end
