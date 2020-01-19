require 'test_helper'

class Generate::YesNoTest < ActionDispatch::IntegrationTest
  test "should test correct result of the tool action" do
    tool = Generate::YesNo.new
    output = tool.run
    assert_equal true, tool.valid?
    assert_equal true, output === true || output === false
  end
end
