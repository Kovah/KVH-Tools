class String::StringLength < Tool
  attr_accessor :input

  validates_presence_of :input

  def run
    @input.length
  end
end
