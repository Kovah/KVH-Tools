class Generate::Uuid < Tool
  attr_accessor :amount

  validates_presence_of :amount
  validates_numericality_of :amount
  validates_length_of :amount, minimum: 1, maximum: 50

  def run
    # Generate a new array with @amount entries which are all initialized with the SecureRandom.uuid method
    Array.new(@amount.to_i) {SecureRandom.uuid}
  end
end
