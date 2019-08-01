class Pills

  attr_reader :pills_count

  def initialize
    @pills_count = 60
  end

  def count
    @pills_count
  end

  def pop
    @pills_count -= 1
  end
end
