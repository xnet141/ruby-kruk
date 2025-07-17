class Character


  def attack target
    target.health -= strike
  end

  protected #private????

  def strike
    rand self.class::STRENGTH
  end
end
