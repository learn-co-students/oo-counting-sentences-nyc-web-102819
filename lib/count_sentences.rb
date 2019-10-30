require 'pry'

class String

  def sentence?
    self.split("").last == "."
  end

  def question?
    self.split("").last == "?"
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[.?!]/).delete_if {|w| w.size < 2}.size
  end
end