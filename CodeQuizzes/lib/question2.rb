# lib/question2.rb
class Question
  def self.average_word_length(string)
    slowa = string.split(' ')
    return if slowa.empty?
    slowa.inject(0) { |sum, word| sum + word.length }.to_f / slowa.length
  end
end
