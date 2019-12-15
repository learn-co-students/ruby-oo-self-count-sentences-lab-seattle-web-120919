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
    delimiter = Regexp.union([". ", "? ", "! "])
    sentences = self.split(delimiter)
    sentences.count
  end
end