require 'test_helper'

class HrmanagersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hrmanagers_index_url
    assert_response :success
  end

  test "should get create" do
    get hrmanagers_create_url
    assert_response :success
  end

  test "should get new" do
    get hrmanagers_new_url
    assert_response :success
  end

  test "should get destroy" do
    get hrmanagers_destroy_url
    assert_response :success
  end

  test "should get show" do
    get hrmanagers_show_url
    assert_response :success
  end

end
