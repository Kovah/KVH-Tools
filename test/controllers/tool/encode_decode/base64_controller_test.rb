require 'test_helper'

class Tool::EncodeDecode::Base64ControllerTest < ActionDispatch::IntegrationTest
  test "should get the form" do
    get new_tool_encode_decode_base64_url
    assert_response :success
  end
end
