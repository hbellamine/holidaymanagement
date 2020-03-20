require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get employees_resources_url
    assert_response :success
  end

end
