class Character
  attr_accessor :health

  def attack target
    target.health -= strike
    return strike
  end

  protected #private????

  def strike
    rand self.class::STRENGTH
  end
end
