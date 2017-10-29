# spec/question2_spec.rb
require 'question2'

describe Question do
  describe "#average_word_length" do
    it "returns average word length" do
      string = "i wish that i was cool"
      expect(Question.average_word_length(string)).to be_within(0.01).of 2.83
    end
  end
end
