class Character


  def attack target
    target.health -= strike
  end

  def strike
    rand self.class::STRENGTH
  end
end
