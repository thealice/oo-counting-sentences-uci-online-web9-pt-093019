require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    string = self.squeeze(”.”)
    string = string.squeeze(”!”)
    binding.pry
    string.split(/[$.|?|!]/).count

  end
end
