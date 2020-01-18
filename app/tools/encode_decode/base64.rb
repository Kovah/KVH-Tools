class EncodeDecode::Base64 < Tool
  attr_accessor :input
  attr_accessor :operation

  validates_presence_of :input
  validates_presence_of :operation
  validates_format_of :operation, with: /encode|decode/

  def run
    @operation === 'encode' ? Base64.strict_encode64(@input) : Base64.strict_decode64(@input)
  end
end
