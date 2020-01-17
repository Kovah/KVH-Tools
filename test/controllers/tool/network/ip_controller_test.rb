require 'test_helper'

class Tool::Network::IpControllerTest < ActionDispatch::IntegrationTest
  test "should get the form" do
    get new_tool_network_ip_address_url
    assert_response :success
  end
end
