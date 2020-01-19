require 'test_helper'

class Tool::Generate::YesNoControllerTest < ActionDispatch::IntegrationTest
  test "should get the form" do
    get new_tool_generate_yes_no_url
    assert_response :success
  end
end
