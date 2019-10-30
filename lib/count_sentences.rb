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
      # if self.end_with?('.','?','!')
        sentences = self.split(/[.?!]/)
        new_sentences = sentences.delete_if {|element| element.length < 1}
        return new_sentences.count
      # else
      # 0
    end
end
