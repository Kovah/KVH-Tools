class Convert::BinHex < Tool
  attr_accessor :input
  attr_accessor :operation

  validates_presence_of :input
  validates_presence_of :operation
  validates_format_of :operation, with: /bin-to-hex|hex-to-bin/

  def run
    # Create an array from all lines or space-separated inputs
    entries = @input.split

    # Do the conversion based on the input
    if @operation === 'bin-to-hex'
      @output = entries.map { |l| "0x" + l.to_i(2).to_s(16) }
    else
      @output = entries.map { |hex| hex.to_i(16).to_s(2) }
    end

    # Convert the array into a readable string
    @output.join("\n")
  end
end
