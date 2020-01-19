class Generate::YesNo < Tool
  def run
    Random.rand(2) === 1
  end
end
