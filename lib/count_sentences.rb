require 'pry'

class String

  def report_on_self
    puts "self is: #{self}"
  end

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
    arr_of_sentences = self.split(/\.|\?|!/).select { |sen| sen != "" }
    arr_of_sentences.count
  end
end