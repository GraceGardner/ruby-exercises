class Centaur
  attr_reader :name, :breed, :shots_fired, :ran, :standing, :sick
  def initialize(name, breed)
    @name = name
    @breed = breed
    @shots_fired = 0
    @ran = 0
    @standing = true
    @sick = false
  end

  def shoot
    if rested? && standing?
      @shots_fired += 1
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    if rested? && standing?
      @ran += 1
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
  end

  def cranky?
    !rested?
  end

  def standing?
    @standing
  end

  def sleep
    if @standing
      "NO!"
    else
      rest
    end
  end

  def laying?
    !@standing
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    if rested?
      @sick = true
    elsif @standing
      rest
    end
  end

  def rested?
    @shots_fired <= 1 && @ran <= 0
  end

  def sick?
    @sick
  end

  private

  def rest
    @shots_fired = 0
    @ran = 0
  end

end
