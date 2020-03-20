require 'test_helper'

class SafetymanagersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get safetymanagers_index_url
    assert_response :success
  end

  test "should get create" do
    get safetymanagers_create_url
    assert_response :success
  end

  test "should get new" do
    get safetymanagers_new_url
    assert_response :success
  end

  test "should get destroy" do
    get safetymanagers_destroy_url
    assert_response :success
  end

  test "should get show" do
    get safetymanagers_show_url
    assert_response :success
  end

end
