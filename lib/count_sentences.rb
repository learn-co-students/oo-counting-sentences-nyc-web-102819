require 'pry'
 
class String
 
  def sentence?
    self.end_with? (".")
  end
 
  def question?
    self.end_with?("?")
  end
 
  def exclamation?
    self.end_with?("!")
  end
 
  def count_sentences
    new_string = self.squeeze("!").squeeze(".").squeeze("?")
    string_ar = new_string.split(/\?|\.|!/)
    string_ar.length
 
    
  end
end
