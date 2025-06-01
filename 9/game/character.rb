class Character

    # MIN_DMG = 1
    # MAX_DMG = 10


  def attack(target)
    dmg = rand MIN_DMG..MAX_DMG
    target.receive_dmg(dmg)
  end

  # private

  def receive_dmg(dmg)
    @hit_points -= dmg
  end

  def hit_points
    @hit_points
  end
end