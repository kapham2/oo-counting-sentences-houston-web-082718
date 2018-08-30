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
    if self.length == 0
      return 0
    else
      count = 0
      self.split(" ").each do |word|
        count += 1 if word.sentence? || word.question? || word.exclamation?
      end
    end
    count
  end

end
