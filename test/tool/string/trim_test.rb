require 'test_helper'

class String::TrimTest < ActionDispatch::IntegrationTest
  test "should test correct result of the tool action" do
    tool = String::Trim.new({input: ' abc '})
    output = tool.run
    assert_equal true, tool.valid?
    assert_equal 'abc', output
  end

  test "should test invalid input for the tool" do
    tool = String::Trim.new({})
    assert_equal false, tool.valid?
  end
end
