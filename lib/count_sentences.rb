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

  def count_sentences #use self keyword 
    split_variable = self.split(/\.|\?|\!/)
    # binding.pry
    new_array = split_variable.delete_if { |word| word.size < 3 }
    new_array.size
  end
end 