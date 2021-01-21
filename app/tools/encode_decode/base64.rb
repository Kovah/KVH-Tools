class EncodeDecode::Base64 < Tool
  attr_accessor :input
  attr_accessor :operation

  validates_presence_of :input
  validates_presence_of :operation
  validates_format_of :operation, with: /encode|decode/

  def run
    begin
      @operation === 'encode' ? Base64.strict_encode64(@input) : Base64.strict_decode64(@input)
    rescue ArgumentError
      "Error: Invalid Input"
    end
  end
end
