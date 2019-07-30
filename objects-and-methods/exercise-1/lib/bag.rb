class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(type)
    # check each candy see if it matches type
    candies.find do |candy|
      candy.type == type
    end
  end

  def remove
    @candies.pop
  end
end
