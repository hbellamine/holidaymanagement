require 'test_helper'

class DaysoffsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daysoffs_index_url
    assert_response :success
  end

  test "should get create" do
    get daysoffs_create_url
    assert_response :success
  end

  test "should get new" do
    get daysoffs_new_url
    assert_response :success
  end

  test "should get destroy" do
    get daysoffs_destroy_url
    assert_response :success
  end

  test "should get show" do
    get daysoffs_show_url
    assert_response :success
  end

end
