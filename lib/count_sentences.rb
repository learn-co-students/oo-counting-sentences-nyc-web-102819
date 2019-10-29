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
    temp_array = self.split(/\.|\?|\!/)
    temp_array.delete_if do |sentence|
      sentence.size <= 1
    end
    temp_array.count
  end

end

