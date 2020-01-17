require 'test_helper'

class Tool::Generate::UuidControllerTest < ActionDispatch::IntegrationTest
  test "should get the form" do
    get new_tool_generate_uuid_url
    assert_response :success
  end
end
