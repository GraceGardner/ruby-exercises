class Wizard
attr_reader :name,:bearded, :root_powers, :spell, :rested
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @root_powers = "sudo "
    @spell = "MAGIC MISSILE"
    @rested = 3
  end

  def bearded?
    @bearded = bearded
  end

  def incantation(incantation)
    @root_powers += incantation
  end

  def rested?
    @rested > 0
  end

  def cast
    @rested -= 1
    @spell
  end
end
