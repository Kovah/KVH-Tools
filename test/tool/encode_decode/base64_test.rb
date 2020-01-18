require 'test_helper'

class EncodeDecode::Base64Test < ActionDispatch::IntegrationTest
  test "should test correct encode result of the tool action" do
    tool = EncodeDecode::Base64.new({input: 'Hello World!', operation: 'encode'})
    output = tool.run
    assert_equal true, tool.valid?
    assert_equal 'SGVsbG8gV29ybGQh', output
  end

  test "should test correct decode result of the tool action" do
    tool = EncodeDecode::Base64.new({
        input: 'TG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2ljaSBlbGl0LCBzZWQgZWl1c21vZCB0ZW1wb3IgaW5jaWR1bnQgdXQgbGFib3JlIGV0IGRvbG9yZSBtYWduYSBhbGlxdWEu',
        operation: 'decode'
    })

    output = tool.run
    assert_equal true, tool.valid?
    assert_equal 'Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.', output
  end

  test "should test missing input for the tool" do
    tool = EncodeDecode::Base64.new({})
    assert_equal false, tool.valid?
  end

  test "should test wrong operation input for the tool" do
    tool = EncodeDecode::Base64.new({input: 'Hello World!', operation: 'love-me'})
    assert_equal false, tool.valid?
  end
end
