require 'test_helper'

class Tool::String::TrimControllerTest < ActionDispatch::IntegrationTest
  test "should get the form" do
    get new_tool_string_trim_url
    assert_response :success
  end
end
