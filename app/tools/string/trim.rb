class String::Trim < Tool
  attr_accessor :input

  validates_presence_of :input

  def run
    @input.strip
  end
end
