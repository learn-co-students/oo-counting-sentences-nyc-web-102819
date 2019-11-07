require 'pry'

class String

  def sentence?
    if self.end_with?("?")
    else
      self.end_with?(".")
    end
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    complex_string = self.split(/[.?!]/).delete_if {|w| w.size < 2}.size
    complex_string
  end
end