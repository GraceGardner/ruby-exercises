class Madlib
  def initialize
    @noun = nil
    @verb = nil
    @adjective = nil
    @adverb = nil
  end
  def noun(noun_word)
    @noun = noun_word
  end

  def verb(verb_word)
    @verb = verb_word
  end

  def adjective(adjective_word)
    @adjective = adjective_word
  end

  def adverb(adverb_word)
    @adverb = adverb_word
  end

  def result
    "Do you #{@verb} your #{@adjective} #{@noun} #{@adverb}? That's hilarious!"
  end
end
