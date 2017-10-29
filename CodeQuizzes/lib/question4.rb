# lib/question4.rb
class Question
  def self.vowels(string)
    string.split.select do |w|
      w.match /[aeiou]/
    end
  end
end
