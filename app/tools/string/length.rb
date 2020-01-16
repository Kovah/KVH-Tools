class String::Length < Tool
  attr_accessor :input

  validates_presence_of :input

  def run
    @input.length
  end
end
