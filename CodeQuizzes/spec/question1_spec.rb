# spec/question1_spec.rb
require 'question1'

describe Question do

  describe "#word_count" do
    it "returns number of words in a string" do
      string = "laughter, it's free"
      expect(Question.word_count(string)).to eq 3
    end

    it "returns 0 for empty string" do
      expect(Question.word_count("")).to eq 0
    end
  end
end
