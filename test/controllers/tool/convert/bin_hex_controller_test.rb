require 'test_helper'

class Tool::Convert::BinHexControllerTest < ActionDispatch::IntegrationTest
  test "should get the form" do
    get new_tool_convert_bin_hex_url
    assert_response :success
  end
end
