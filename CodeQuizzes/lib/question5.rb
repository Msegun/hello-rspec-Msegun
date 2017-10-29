# lib/question5.rb
class Question
  def self.start_with_c?(string)
    string.split.all? do |word|
      word[0] == 'c'
    end
  end
end
