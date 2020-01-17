require 'test_helper'

class String::LengthTest < ActionDispatch::IntegrationTest
  test "should test correct result of the tool action" do
    tool = String::Length.new({input: '123456789'})
    output = tool.run
    assert_equal true, tool.valid?
    assert_equal 9, output
  end

  test "should test invalid input for the tool" do
    tool = String::Length.new({})
    assert_equal false, tool.valid?
  end
end
