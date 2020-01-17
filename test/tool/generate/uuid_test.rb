require 'test_helper'

class Generate::UuidTest < ActionDispatch::IntegrationTest
  test "should test correct result of the tool action" do
    tool = Generate::Uuid.new({amount: '1'})
    output = tool.run
    assert_equal true, tool.valid?
    assert_match /([a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}){1}/, output.first
  end

  test "should test missing input for the tool" do
    tool = Generate::Uuid.new({})
    assert_equal false, tool.valid?
  end

  test "should test alphabetical input for the tool" do
    tool = Generate::Uuid.new({amount: 'abc'})
    assert_equal false, tool.valid?
  end

  test "should test float number input for the tool" do
    tool = Generate::Uuid.new({amount: '5.34543'})
    assert_equal false, tool.valid?
  end

  test "should test too high number input for the tool" do
    tool = Generate::Uuid.new({amount: '67'})
    assert_equal false, tool.valid?
  end
end
