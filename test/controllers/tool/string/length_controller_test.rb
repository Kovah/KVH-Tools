require 'test_helper'

class Tool::String::LengthControllerTest < ActionDispatch::IntegrationTest
  test "should get the form" do
    get new_tool_string_length_url
    assert_response :success
  end
end
